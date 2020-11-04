package com.kgc.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class userimgExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public userimgExample() {
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

        public Criteria andUserinfoImgidIsNull() {
            addCriterion("userinfo_imgid is null");
            return (Criteria) this;
        }

        public Criteria andUserinfoImgidIsNotNull() {
            addCriterion("userinfo_imgid is not null");
            return (Criteria) this;
        }

        public Criteria andUserinfoImgidEqualTo(Integer value) {
            addCriterion("userinfo_imgid =", value, "userinfoImgid");
            return (Criteria) this;
        }

        public Criteria andUserinfoImgidNotEqualTo(Integer value) {
            addCriterion("userinfo_imgid <>", value, "userinfoImgid");
            return (Criteria) this;
        }

        public Criteria andUserinfoImgidGreaterThan(Integer value) {
            addCriterion("userinfo_imgid >", value, "userinfoImgid");
            return (Criteria) this;
        }

        public Criteria andUserinfoImgidGreaterThanOrEqualTo(Integer value) {
            addCriterion("userinfo_imgid >=", value, "userinfoImgid");
            return (Criteria) this;
        }

        public Criteria andUserinfoImgidLessThan(Integer value) {
            addCriterion("userinfo_imgid <", value, "userinfoImgid");
            return (Criteria) this;
        }

        public Criteria andUserinfoImgidLessThanOrEqualTo(Integer value) {
            addCriterion("userinfo_imgid <=", value, "userinfoImgid");
            return (Criteria) this;
        }

        public Criteria andUserinfoImgidIn(List<Integer> values) {
            addCriterion("userinfo_imgid in", values, "userinfoImgid");
            return (Criteria) this;
        }

        public Criteria andUserinfoImgidNotIn(List<Integer> values) {
            addCriterion("userinfo_imgid not in", values, "userinfoImgid");
            return (Criteria) this;
        }

        public Criteria andUserinfoImgidBetween(Integer value1, Integer value2) {
            addCriterion("userinfo_imgid between", value1, value2, "userinfoImgid");
            return (Criteria) this;
        }

        public Criteria andUserinfoImgidNotBetween(Integer value1, Integer value2) {
            addCriterion("userinfo_imgid not between", value1, value2, "userinfoImgid");
            return (Criteria) this;
        }

        public Criteria andUserinfoUseridIsNull() {
            addCriterion("userinfo_userid is null");
            return (Criteria) this;
        }

        public Criteria andUserinfoUseridIsNotNull() {
            addCriterion("userinfo_userid is not null");
            return (Criteria) this;
        }

        public Criteria andUserinfoUseridEqualTo(Integer value) {
            addCriterion("userinfo_userid =", value, "userinfoUserid");
            return (Criteria) this;
        }

        public Criteria andUserinfoUseridNotEqualTo(Integer value) {
            addCriterion("userinfo_userid <>", value, "userinfoUserid");
            return (Criteria) this;
        }

        public Criteria andUserinfoUseridGreaterThan(Integer value) {
            addCriterion("userinfo_userid >", value, "userinfoUserid");
            return (Criteria) this;
        }

        public Criteria andUserinfoUseridGreaterThanOrEqualTo(Integer value) {
            addCriterion("userinfo_userid >=", value, "userinfoUserid");
            return (Criteria) this;
        }

        public Criteria andUserinfoUseridLessThan(Integer value) {
            addCriterion("userinfo_userid <", value, "userinfoUserid");
            return (Criteria) this;
        }

        public Criteria andUserinfoUseridLessThanOrEqualTo(Integer value) {
            addCriterion("userinfo_userid <=", value, "userinfoUserid");
            return (Criteria) this;
        }

        public Criteria andUserinfoUseridIn(List<Integer> values) {
            addCriterion("userinfo_userid in", values, "userinfoUserid");
            return (Criteria) this;
        }

        public Criteria andUserinfoUseridNotIn(List<Integer> values) {
            addCriterion("userinfo_userid not in", values, "userinfoUserid");
            return (Criteria) this;
        }

        public Criteria andUserinfoUseridBetween(Integer value1, Integer value2) {
            addCriterion("userinfo_userid between", value1, value2, "userinfoUserid");
            return (Criteria) this;
        }

        public Criteria andUserinfoUseridNotBetween(Integer value1, Integer value2) {
            addCriterion("userinfo_userid not between", value1, value2, "userinfoUserid");
            return (Criteria) this;
        }

        public Criteria andUserinfoImgnameIsNull() {
            addCriterion("userinfo_imgname is null");
            return (Criteria) this;
        }

        public Criteria andUserinfoImgnameIsNotNull() {
            addCriterion("userinfo_imgname is not null");
            return (Criteria) this;
        }

        public Criteria andUserinfoImgnameEqualTo(String value) {
            addCriterion("userinfo_imgname =", value, "userinfoImgname");
            return (Criteria) this;
        }

        public Criteria andUserinfoImgnameNotEqualTo(String value) {
            addCriterion("userinfo_imgname <>", value, "userinfoImgname");
            return (Criteria) this;
        }

        public Criteria andUserinfoImgnameGreaterThan(String value) {
            addCriterion("userinfo_imgname >", value, "userinfoImgname");
            return (Criteria) this;
        }

        public Criteria andUserinfoImgnameGreaterThanOrEqualTo(String value) {
            addCriterion("userinfo_imgname >=", value, "userinfoImgname");
            return (Criteria) this;
        }

        public Criteria andUserinfoImgnameLessThan(String value) {
            addCriterion("userinfo_imgname <", value, "userinfoImgname");
            return (Criteria) this;
        }

        public Criteria andUserinfoImgnameLessThanOrEqualTo(String value) {
            addCriterion("userinfo_imgname <=", value, "userinfoImgname");
            return (Criteria) this;
        }

        public Criteria andUserinfoImgnameLike(String value) {
            addCriterion("userinfo_imgname like", value, "userinfoImgname");
            return (Criteria) this;
        }

        public Criteria andUserinfoImgnameNotLike(String value) {
            addCriterion("userinfo_imgname not like", value, "userinfoImgname");
            return (Criteria) this;
        }

        public Criteria andUserinfoImgnameIn(List<String> values) {
            addCriterion("userinfo_imgname in", values, "userinfoImgname");
            return (Criteria) this;
        }

        public Criteria andUserinfoImgnameNotIn(List<String> values) {
            addCriterion("userinfo_imgname not in", values, "userinfoImgname");
            return (Criteria) this;
        }

        public Criteria andUserinfoImgnameBetween(String value1, String value2) {
            addCriterion("userinfo_imgname between", value1, value2, "userinfoImgname");
            return (Criteria) this;
        }

        public Criteria andUserinfoImgnameNotBetween(String value1, String value2) {
            addCriterion("userinfo_imgname not between", value1, value2, "userinfoImgname");
            return (Criteria) this;
        }

        public Criteria andUserinfoImgdateIsNull() {
            addCriterion("userinfo_imgdate is null");
            return (Criteria) this;
        }

        public Criteria andUserinfoImgdateIsNotNull() {
            addCriterion("userinfo_imgdate is not null");
            return (Criteria) this;
        }

        public Criteria andUserinfoImgdateEqualTo(Date value) {
            addCriterion("userinfo_imgdate =", value, "userinfoImgdate");
            return (Criteria) this;
        }

        public Criteria andUserinfoImgdateNotEqualTo(Date value) {
            addCriterion("userinfo_imgdate <>", value, "userinfoImgdate");
            return (Criteria) this;
        }

        public Criteria andUserinfoImgdateGreaterThan(Date value) {
            addCriterion("userinfo_imgdate >", value, "userinfoImgdate");
            return (Criteria) this;
        }

        public Criteria andUserinfoImgdateGreaterThanOrEqualTo(Date value) {
            addCriterion("userinfo_imgdate >=", value, "userinfoImgdate");
            return (Criteria) this;
        }

        public Criteria andUserinfoImgdateLessThan(Date value) {
            addCriterion("userinfo_imgdate <", value, "userinfoImgdate");
            return (Criteria) this;
        }

        public Criteria andUserinfoImgdateLessThanOrEqualTo(Date value) {
            addCriterion("userinfo_imgdate <=", value, "userinfoImgdate");
            return (Criteria) this;
        }

        public Criteria andUserinfoImgdateIn(List<Date> values) {
            addCriterion("userinfo_imgdate in", values, "userinfoImgdate");
            return (Criteria) this;
        }

        public Criteria andUserinfoImgdateNotIn(List<Date> values) {
            addCriterion("userinfo_imgdate not in", values, "userinfoImgdate");
            return (Criteria) this;
        }

        public Criteria andUserinfoImgdateBetween(Date value1, Date value2) {
            addCriterion("userinfo_imgdate between", value1, value2, "userinfoImgdate");
            return (Criteria) this;
        }

        public Criteria andUserinfoImgdateNotBetween(Date value1, Date value2) {
            addCriterion("userinfo_imgdate not between", value1, value2, "userinfoImgdate");
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