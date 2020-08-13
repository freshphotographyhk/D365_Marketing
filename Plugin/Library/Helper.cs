using System;

using Microsoft.Xrm.Sdk;
using Microsoft.Xrm.Sdk.Query;

namespace Plugin.Library
{
    public static class Helper
    {
        public static OptionSetValue ToOS<TValue>(this TValue value) where TValue : struct, IConvertible
        {
            if (!typeof(TValue).IsEnum)
            {
                throw new ArgumentException(nameof(value));
            }

            return new OptionSetValue((int)(object)value);
        }

        public static int ToInt<TValue>(this TValue value) where TValue : struct, IConvertible
        {
            if (!typeof(TValue).IsEnum)
            {
                throw new ArgumentException(nameof(value));
            }

            return (int)(object)value;
        }

        public static Money ToMoney(this decimal value)
        {
            return new Money(value);
        }

        public static void Swap<T>(ref T a, ref T b) where T : new()
        {
            T temp = default(T);

            temp = b;
            b = a;
            a = temp;
        }

        public static int GetInt(this Entity e, string _fd)
        {
            int value;

            try
            {
                value = e.GetAttributeValue<int>(_fd);
            }
            catch
            {
                value = e.GetAttributeValue<OptionSetValue>(_fd)?.Value ?? 0;
            }

            return value;
        }

        public static DateTime? GetUTCDate(this Entity e, string _fd)
        {
            return e.GetAttributeValue<DateTime>(_fd);
        }

        public static DateTime? GetLocalDate(this Entity e, string _fd)
        {
            DateTime? value;

            value = e.GetAttributeValue<DateTime>(_fd);

            if (value != null)
            {
                DateTime utcDate = DateTime.SpecifyKind(value.Value, DateTimeKind.Utc);
                value = utcDate.ToLocalTime();
            }

            return value;
        }

        public static DateTime? GetHKDate(this Entity e, string _fd)
        {
            DateTime? value;

            value = e.GetAttributeValue<DateTime>(_fd);

            if (value != null)
            {
                value = value.Value.AddHours(8);
            }

            return value;
        }

        public static string GetHKDateString(this Entity e, string _fd, string defaultFormat = "yyyy-MM-dd")
        {
            string value = "";

            DateTime? date = e.GetHKDate(_fd);

            if (date != null)
            {
                value = date.Value.ToString(defaultFormat);
            }

            return value;
        }

        public static decimal GetDecimal(this Entity e, string _fd)
        {
            decimal value;

            try
            {
                value = e.GetAttributeValue<decimal>(_fd);
            }
            catch
            {
                value = e.GetAttributeValue<Money>(_fd)?.Value ?? 0.00M;
            }

            return value;
        }

        public static string GetString(this Entity e, string _fd)
        {
            return e.GetAttributeValue<string>(_fd);
        }

        public static string GetOSName(this Entity e, string _fd)
        {
            return e.FormattedValues[_fd];
        }

        public static bool? GetBool(this Entity e, string _fd)
        {
            bool? value;

            try
            {
                value = e.GetAttributeValue<bool>(_fd);
            }
            catch
            {
                value = null;
            }
            return value;
        }

        public static T GetAttr<T>(this Entity e, string _fd)
        {
            return e.GetAttributeValue<T>(_fd);
        }

        #region Query Helper
        public static QueryExpression CreateQuery(string entityName)
        {
            return new QueryExpression(entityName);
        }

        public static QueryExpression AddAttrs(this QueryExpression qe, params string[] fieldNames)
        {
            foreach (var _fd in fieldNames)
            {
                qe.ColumnSet.AddColumn(_fd);
            }

            return qe;
        }

        public static QueryExpression AddAllAttrs(this QueryExpression qe)
        {
            qe.ColumnSet = new ColumnSet(true);

            return qe;
        }

        public static QueryExpression AddFilter(this QueryExpression qe, LogicalOperator op)
        {
            qe.AddFilter(op);

            return qe;
        }

        #endregion
    }
}
