package com.kgc.pojo;

import java.util.ArrayList;
import java.util.List;

public class UserBuyExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public UserBuyExample() {
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

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andUsernameIsNull() {
            addCriterion("username is null");
            return (Criteria) this;
        }

        public Criteria andUsernameIsNotNull() {
            addCriterion("username is not null");
            return (Criteria) this;
        }

        public Criteria andUsernameEqualTo(String value) {
            addCriterion("username =", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameNotEqualTo(String value) {
            addCriterion("username <>", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameGreaterThan(String value) {
            addCriterion("username >", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameGreaterThanOrEqualTo(String value) {
            addCriterion("username >=", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameLessThan(String value) {
            addCriterion("username <", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameLessThanOrEqualTo(String value) {
            addCriterion("username <=", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameLike(String value) {
            addCriterion("username like", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameNotLike(String value) {
            addCriterion("username not like", value, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameIn(List<String> values) {
            addCriterion("username in", values, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameNotIn(List<String> values) {
            addCriterion("username not in", values, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameBetween(String value1, String value2) {
            addCriterion("username between", value1, value2, "username");
            return (Criteria) this;
        }

        public Criteria andUsernameNotBetween(String value1, String value2) {
            addCriterion("username not between", value1, value2, "username");
            return (Criteria) this;
        }

        public Criteria andBiaoIsNull() {
            addCriterion("biao is null");
            return (Criteria) this;
        }

        public Criteria andBiaoIsNotNull() {
            addCriterion("biao is not null");
            return (Criteria) this;
        }

        public Criteria andBiaoEqualTo(String value) {
            addCriterion("biao =", value, "biao");
            return (Criteria) this;
        }

        public Criteria andBiaoNotEqualTo(String value) {
            addCriterion("biao <>", value, "biao");
            return (Criteria) this;
        }

        public Criteria andBiaoGreaterThan(String value) {
            addCriterion("biao >", value, "biao");
            return (Criteria) this;
        }

        public Criteria andBiaoGreaterThanOrEqualTo(String value) {
            addCriterion("biao >=", value, "biao");
            return (Criteria) this;
        }

        public Criteria andBiaoLessThan(String value) {
            addCriterion("biao <", value, "biao");
            return (Criteria) this;
        }

        public Criteria andBiaoLessThanOrEqualTo(String value) {
            addCriterion("biao <=", value, "biao");
            return (Criteria) this;
        }

        public Criteria andBiaoLike(String value) {
            addCriterion("biao like", value, "biao");
            return (Criteria) this;
        }

        public Criteria andBiaoNotLike(String value) {
            addCriterion("biao not like", value, "biao");
            return (Criteria) this;
        }

        public Criteria andBiaoIn(List<String> values) {
            addCriterion("biao in", values, "biao");
            return (Criteria) this;
        }

        public Criteria andBiaoNotIn(List<String> values) {
            addCriterion("biao not in", values, "biao");
            return (Criteria) this;
        }

        public Criteria andBiaoBetween(String value1, String value2) {
            addCriterion("biao between", value1, value2, "biao");
            return (Criteria) this;
        }

        public Criteria andBiaoNotBetween(String value1, String value2) {
            addCriterion("biao not between", value1, value2, "biao");
            return (Criteria) this;
        }

        public Criteria andLeiIsNull() {
            addCriterion("lei is null");
            return (Criteria) this;
        }

        public Criteria andLeiIsNotNull() {
            addCriterion("lei is not null");
            return (Criteria) this;
        }

        public Criteria andLeiEqualTo(Integer value) {
            addCriterion("lei =", value, "lei");
            return (Criteria) this;
        }

        public Criteria andLeiNotEqualTo(Integer value) {
            addCriterion("lei <>", value, "lei");
            return (Criteria) this;
        }

        public Criteria andLeiGreaterThan(Integer value) {
            addCriterion("lei >", value, "lei");
            return (Criteria) this;
        }

        public Criteria andLeiGreaterThanOrEqualTo(Integer value) {
            addCriterion("lei >=", value, "lei");
            return (Criteria) this;
        }

        public Criteria andLeiLessThan(Integer value) {
            addCriterion("lei <", value, "lei");
            return (Criteria) this;
        }

        public Criteria andLeiLessThanOrEqualTo(Integer value) {
            addCriterion("lei <=", value, "lei");
            return (Criteria) this;
        }

        public Criteria andLeiIn(List<Integer> values) {
            addCriterion("lei in", values, "lei");
            return (Criteria) this;
        }

        public Criteria andLeiNotIn(List<Integer> values) {
            addCriterion("lei not in", values, "lei");
            return (Criteria) this;
        }

        public Criteria andLeiBetween(Integer value1, Integer value2) {
            addCriterion("lei between", value1, value2, "lei");
            return (Criteria) this;
        }

        public Criteria andLeiNotBetween(Integer value1, Integer value2) {
            addCriterion("lei not between", value1, value2, "lei");
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