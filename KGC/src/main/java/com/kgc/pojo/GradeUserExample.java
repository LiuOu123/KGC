package com.kgc.pojo;

import java.util.ArrayList;
import java.util.List;

public class GradeUserExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public GradeUserExample() {
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

        public Criteria andGuidIsNull() {
            addCriterion("guid is null");
            return (Criteria) this;
        }

        public Criteria andGuidIsNotNull() {
            addCriterion("guid is not null");
            return (Criteria) this;
        }
        /**/
        public Criteria andleiEqualTo(Integer value) {
            addCriterion("lei =", value, "lei");
            return (Criteria) this;
        }
        public Criteria andtitleLike(String value) {
            addCriterion("user like", value, "user");
            return (Criteria) this;
        }
/**/


        public Criteria andGuidEqualTo(Integer value) {
            addCriterion("guid =", value, "guid");
            return (Criteria) this;
        }

        public Criteria andGuidNotEqualTo(Integer value) {
            addCriterion("guid <>", value, "guid");
            return (Criteria) this;
        }

        public Criteria andGuidGreaterThan(Integer value) {
            addCriterion("guid >", value, "guid");
            return (Criteria) this;
        }

        public Criteria andGuidGreaterThanOrEqualTo(Integer value) {
            addCriterion("guid >=", value, "guid");
            return (Criteria) this;
        }

        public Criteria andGuidLessThan(Integer value) {
            addCriterion("guid <", value, "guid");
            return (Criteria) this;
        }

        public Criteria andGuidLessThanOrEqualTo(Integer value) {
            addCriterion("guid <=", value, "guid");
            return (Criteria) this;
        }

        public Criteria andGuidIn(List<Integer> values) {
            addCriterion("guid in", values, "guid");
            return (Criteria) this;
        }

        public Criteria andGuidNotIn(List<Integer> values) {
            addCriterion("guid not in", values, "guid");
            return (Criteria) this;
        }

        public Criteria andGuidBetween(Integer value1, Integer value2) {
            addCriterion("guid between", value1, value2, "guid");
            return (Criteria) this;
        }

        public Criteria andGuidNotBetween(Integer value1, Integer value2) {
            addCriterion("guid not between", value1, value2, "guid");
            return (Criteria) this;
        }

        public Criteria andGradeidIsNull() {
            addCriterion("gradeid is null");
            return (Criteria) this;
        }

        public Criteria andGradeidIsNotNull() {
            addCriterion("gradeid is not null");
            return (Criteria) this;
        }

        public Criteria andGradeidEqualTo(Integer value) {
            addCriterion("gradeid =", value, "gradeid");
            return (Criteria) this;
        }

        public Criteria andGradeidNotEqualTo(Integer value) {
            addCriterion("gradeid <>", value, "gradeid");
            return (Criteria) this;
        }

        public Criteria andGradeidGreaterThan(Integer value) {
            addCriterion("gradeid >", value, "gradeid");
            return (Criteria) this;
        }

        public Criteria andGradeidGreaterThanOrEqualTo(Integer value) {
            addCriterion("gradeid >=", value, "gradeid");
            return (Criteria) this;
        }

        public Criteria andGradeidLessThan(Integer value) {
            addCriterion("gradeid <", value, "gradeid");
            return (Criteria) this;
        }

        public Criteria andGradeidLessThanOrEqualTo(Integer value) {
            addCriterion("gradeid <=", value, "gradeid");
            return (Criteria) this;
        }

        public Criteria andGradeidIn(List<Integer> values) {
            addCriterion("gradeid in", values, "gradeid");
            return (Criteria) this;
        }

        public Criteria andGradeidNotIn(List<Integer> values) {
            addCriterion("gradeid not in", values, "gradeid");
            return (Criteria) this;
        }

        public Criteria andGradeidBetween(Integer value1, Integer value2) {
            addCriterion("gradeid between", value1, value2, "gradeid");
            return (Criteria) this;
        }

        public Criteria andGradeidNotBetween(Integer value1, Integer value2) {
            addCriterion("gradeid not between", value1, value2, "gradeid");
            return (Criteria) this;
        }

        public Criteria andUseridIsNull() {
            addCriterion("userid is null");
            return (Criteria) this;
        }

        public Criteria andUseridIsNotNull() {
            addCriterion("userid is not null");
            return (Criteria) this;
        }

        public Criteria andUseridEqualTo(Integer value) {
            addCriterion("userid =", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridNotEqualTo(Integer value) {
            addCriterion("userid <>", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridGreaterThan(Integer value) {
            addCriterion("userid >", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridGreaterThanOrEqualTo(Integer value) {
            addCriterion("userid >=", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridLessThan(Integer value) {
            addCriterion("userid <", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridLessThanOrEqualTo(Integer value) {
            addCriterion("userid <=", value, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridIn(List<Integer> values) {
            addCriterion("userid in", values, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridNotIn(List<Integer> values) {
            addCriterion("userid not in", values, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridBetween(Integer value1, Integer value2) {
            addCriterion("userid between", value1, value2, "userid");
            return (Criteria) this;
        }

        public Criteria andUseridNotBetween(Integer value1, Integer value2) {
            addCriterion("userid not between", value1, value2, "userid");
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