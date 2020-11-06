package com.kgc.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class luntanhistoryExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public luntanhistoryExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andHoistroyIdIsNull() {
            addCriterion("hoistroy_id is null");
            return (Criteria) this;
        }

        public Criteria andHoistroyIdIsNotNull() {
            addCriterion("hoistroy_id is not null");
            return (Criteria) this;
        }

        public Criteria andHoistroyIdEqualTo(Integer value) {
            addCriterion("hoistroy_id =", value, "hoistroyId");
            return (Criteria) this;
        }


        public Criteria andHoistroyIdNotEqualTo(Integer value) {
            addCriterion("hoistroy_id <>", value, "hoistroyId");
            return (Criteria) this;
        }
        public Criteria andTitleLike(String value) {
            addCriterion("title like", value, "title");
            return (Criteria) this;
        }
        public Criteria andHoistroyIdGreaterThan(Integer value) {
            addCriterion("hoistroy_id >", value, "hoistroyId");
            return (Criteria) this;
        }

        public Criteria andHoistroyIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("hoistroy_id >=", value, "hoistroyId");
            return (Criteria) this;
        }

        public Criteria andHoistroyIdLessThan(Integer value) {
            addCriterion("hoistroy_id <", value, "hoistroyId");
            return (Criteria) this;
        }

        public Criteria andHoistroyIdLessThanOrEqualTo(Integer value) {
            addCriterion("hoistroy_id <=", value, "hoistroyId");
            return (Criteria) this;
        }

        public Criteria andHoistroyIdIn(List<Integer> values) {
            addCriterion("hoistroy_id in", values, "hoistroyId");
            return (Criteria) this;
        }

        public Criteria andHoistroyIdNotIn(List<Integer> values) {
            addCriterion("hoistroy_id not in", values, "hoistroyId");
            return (Criteria) this;
        }

        public Criteria andHoistroyIdBetween(Integer value1, Integer value2) {
            addCriterion("hoistroy_id between", value1, value2, "hoistroyId");
            return (Criteria) this;
        }

        public Criteria andHoistroyIdNotBetween(Integer value1, Integer value2) {
            addCriterion("hoistroy_id not between", value1, value2, "hoistroyId");
            return (Criteria) this;
        }

        public Criteria andHoistroyLuntanidIsNull() {
            addCriterion("hoistroy_luntanid is null");
            return (Criteria) this;
        }

        public Criteria andHoistroyLuntanidIsNotNull() {
            addCriterion("hoistroy_luntanid is not null");
            return (Criteria) this;
        }

        public Criteria andHoistroyLuntanidEqualTo(Integer value) {
            addCriterion("hoistroy_luntanid =", value, "hoistroyLuntanid");
            return (Criteria) this;
        }

        public Criteria andHoistroyLuntanidNotEqualTo(Integer value) {
            addCriterion("hoistroy_luntanid <>", value, "hoistroyLuntanid");
            return (Criteria) this;
        }

        public Criteria andHoistroyLuntanidGreaterThan(Integer value) {
            addCriterion("hoistroy_luntanid >", value, "hoistroyLuntanid");
            return (Criteria) this;
        }

        public Criteria andHoistroyLuntanidGreaterThanOrEqualTo(Integer value) {
            addCriterion("hoistroy_luntanid >=", value, "hoistroyLuntanid");
            return (Criteria) this;
        }

        public Criteria andHoistroyLuntanidLessThan(Integer value) {
            addCriterion("hoistroy_luntanid <", value, "hoistroyLuntanid");
            return (Criteria) this;
        }

        public Criteria andHoistroyLuntanidLessThanOrEqualTo(Integer value) {
            addCriterion("hoistroy_luntanid <=", value, "hoistroyLuntanid");
            return (Criteria) this;
        }

        public Criteria andHoistroyLuntanidIn(List<Integer> values) {
            addCriterion("hoistroy_luntanid in", values, "hoistroyLuntanid");
            return (Criteria) this;
        }

        public Criteria andHoistroyLuntanidNotIn(List<Integer> values) {
            addCriterion("hoistroy_luntanid not in", values, "hoistroyLuntanid");
            return (Criteria) this;
        }

        public Criteria andHoistroyLuntanidBetween(Integer value1, Integer value2) {
            addCriterion("hoistroy_luntanid between", value1, value2, "hoistroyLuntanid");
            return (Criteria) this;
        }

        public Criteria andHoistroyLuntanidNotBetween(Integer value1, Integer value2) {
            addCriterion("hoistroy_luntanid not between", value1, value2, "hoistroyLuntanid");
            return (Criteria) this;
        }

        public Criteria andHoistroyUseridIsNull() {
            addCriterion("hoistroy_userid is null");
            return (Criteria) this;
        }

        public Criteria andHoistroyUseridIsNotNull() {
            addCriterion("hoistroy_userid is not null");
            return (Criteria) this;
        }

        public Criteria andHoistroyUseridEqualTo(Integer value) {
            addCriterion("hoistroy_userid =", value, "hoistroyUserid");
            return (Criteria) this;
        }

        public Criteria andHoistroyUseridNotEqualTo(Integer value) {
            addCriterion("hoistroy_userid <>", value, "hoistroyUserid");
            return (Criteria) this;
        }

        public Criteria andHoistroyUseridGreaterThan(Integer value) {
            addCriterion("hoistroy_userid >", value, "hoistroyUserid");
            return (Criteria) this;
        }

        public Criteria andHoistroyUseridGreaterThanOrEqualTo(Integer value) {
            addCriterion("hoistroy_userid >=", value, "hoistroyUserid");
            return (Criteria) this;
        }

        public Criteria andHoistroyUseridLessThan(Integer value) {
            addCriterion("hoistroy_userid <", value, "hoistroyUserid");
            return (Criteria) this;
        }

        public Criteria andHoistroyUseridLessThanOrEqualTo(Integer value) {
            addCriterion("hoistroy_userid <=", value, "hoistroyUserid");
            return (Criteria) this;
        }

        public Criteria andHoistroyUseridIn(List<Integer> values) {
            addCriterion("hoistroy_userid in", values, "hoistroyUserid");
            return (Criteria) this;
        }

        public Criteria andHoistroyUseridNotIn(List<Integer> values) {
            addCriterion("hoistroy_userid not in", values, "hoistroyUserid");
            return (Criteria) this;
        }

        public Criteria andHoistroyUseridBetween(Integer value1, Integer value2) {
            addCriterion("hoistroy_userid between", value1, value2, "hoistroyUserid");
            return (Criteria) this;
        }

        public Criteria andHoistroyUseridNotBetween(Integer value1, Integer value2) {
            addCriterion("hoistroy_userid not between", value1, value2, "hoistroyUserid");
            return (Criteria) this;
        }

        public Criteria andHoistroyDateIsNull() {
            addCriterion("hoistroy_date is null");
            return (Criteria) this;
        }

        public Criteria andHoistroyDateIsNotNull() {
            addCriterion("hoistroy_date is not null");
            return (Criteria) this;
        }

        public Criteria andHoistroyDateEqualTo(Date value) {
            addCriterion("hoistroy_date =", value, "hoistroyDate");
            return (Criteria) this;
        }

        public Criteria andHoistroyDateNotEqualTo(Date value) {
            addCriterion("hoistroy_date <>", value, "hoistroyDate");
            return (Criteria) this;
        }

        public Criteria andHoistroyDateGreaterThan(Date value) {
            addCriterion("hoistroy_date >", value, "hoistroyDate");
            return (Criteria) this;
        }

        public Criteria andHoistroyDateGreaterThanOrEqualTo(Date value) {
            addCriterion("hoistroy_date >=", value, "hoistroyDate");
            return (Criteria) this;
        }

        public Criteria andHoistroyDateLessThan(Date value) {
            addCriterion("hoistroy_date <", value, "hoistroyDate");
            return (Criteria) this;
        }

        public Criteria andHoistroyDateLessThanOrEqualTo(Date value) {
            addCriterion("hoistroy_date <=", value, "hoistroyDate");
            return (Criteria) this;
        }

        public Criteria andHoistroyDateIn(List<Date> values) {
            addCriterion("hoistroy_date in", values, "hoistroyDate");
            return (Criteria) this;
        }

        public Criteria andHoistroyDateNotIn(List<Date> values) {
            addCriterion("hoistroy_date not in", values, "hoistroyDate");
            return (Criteria) this;
        }

        public Criteria andHoistroyDateBetween(Date value1, Date value2) {
            addCriterion("hoistroy_date between", value1, value2, "hoistroyDate");
            return (Criteria) this;
        }

        public Criteria andHoistroyDateNotBetween(Date value1, Date value2) {
            addCriterion("hoistroy_date not between", value1, value2, "hoistroyDate");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}