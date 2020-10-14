package com.kgc.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class WoDeXiaoXiExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public WoDeXiaoXiExample() {
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

        public Criteria andXidIsNull() {
            addCriterion("xid is null");
            return (Criteria) this;
        }

        public Criteria andXidIsNotNull() {
            addCriterion("xid is not null");
            return (Criteria) this;
        }

        public Criteria andXidEqualTo(Integer value) {
            addCriterion("xid =", value, "xid");
            return (Criteria) this;
        }

        public Criteria andXidNotEqualTo(Integer value) {
            addCriterion("xid <>", value, "xid");
            return (Criteria) this;
        }

        public Criteria andXidGreaterThan(Integer value) {
            addCriterion("xid >", value, "xid");
            return (Criteria) this;
        }

        public Criteria andXidGreaterThanOrEqualTo(Integer value) {
            addCriterion("xid >=", value, "xid");
            return (Criteria) this;
        }

        public Criteria andXidLessThan(Integer value) {
            addCriterion("xid <", value, "xid");
            return (Criteria) this;
        }

        public Criteria andXidLessThanOrEqualTo(Integer value) {
            addCriterion("xid <=", value, "xid");
            return (Criteria) this;
        }

        public Criteria andXidIn(List<Integer> values) {
            addCriterion("xid in", values, "xid");
            return (Criteria) this;
        }

        public Criteria andXidNotIn(List<Integer> values) {
            addCriterion("xid not in", values, "xid");
            return (Criteria) this;
        }

        public Criteria andXidBetween(Integer value1, Integer value2) {
            addCriterion("xid between", value1, value2, "xid");
            return (Criteria) this;
        }

        public Criteria andXidNotBetween(Integer value1, Integer value2) {
            addCriterion("xid not between", value1, value2, "xid");
            return (Criteria) this;
        }

        public Criteria andSenduseridIsNull() {
            addCriterion("senduserid is null");
            return (Criteria) this;
        }

        public Criteria andSenduseridIsNotNull() {
            addCriterion("senduserid is not null");
            return (Criteria) this;
        }

        public Criteria andSenduseridEqualTo(Integer value) {
            addCriterion("senduserid =", value, "senduserid");
            return (Criteria) this;
        }

        public Criteria andSenduseridNotEqualTo(Integer value) {
            addCriterion("senduserid <>", value, "senduserid");
            return (Criteria) this;
        }

        public Criteria andSenduseridGreaterThan(Integer value) {
            addCriterion("senduserid >", value, "senduserid");
            return (Criteria) this;
        }

        public Criteria andSenduseridGreaterThanOrEqualTo(Integer value) {
            addCriterion("senduserid >=", value, "senduserid");
            return (Criteria) this;
        }

        public Criteria andSenduseridLessThan(Integer value) {
            addCriterion("senduserid <", value, "senduserid");
            return (Criteria) this;
        }

        public Criteria andSenduseridLessThanOrEqualTo(Integer value) {
            addCriterion("senduserid <=", value, "senduserid");
            return (Criteria) this;
        }

        public Criteria andSenduseridIn(List<Integer> values) {
            addCriterion("senduserid in", values, "senduserid");
            return (Criteria) this;
        }

        public Criteria andSenduseridNotIn(List<Integer> values) {
            addCriterion("senduserid not in", values, "senduserid");
            return (Criteria) this;
        }

        public Criteria andSenduseridBetween(Integer value1, Integer value2) {
            addCriterion("senduserid between", value1, value2, "senduserid");
            return (Criteria) this;
        }

        public Criteria andSenduseridNotBetween(Integer value1, Integer value2) {
            addCriterion("senduserid not between", value1, value2, "senduserid");
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

        public Criteria andChatIsNull() {
            addCriterion("chat is null");
            return (Criteria) this;
        }

        public Criteria andChatIsNotNull() {
            addCriterion("chat is not null");
            return (Criteria) this;
        }

        public Criteria andChatEqualTo(String value) {
            addCriterion("chat =", value, "chat");
            return (Criteria) this;
        }

        public Criteria andChatNotEqualTo(String value) {
            addCriterion("chat <>", value, "chat");
            return (Criteria) this;
        }

        public Criteria andChatGreaterThan(String value) {
            addCriterion("chat >", value, "chat");
            return (Criteria) this;
        }

        public Criteria andChatGreaterThanOrEqualTo(String value) {
            addCriterion("chat >=", value, "chat");
            return (Criteria) this;
        }

        public Criteria andChatLessThan(String value) {
            addCriterion("chat <", value, "chat");
            return (Criteria) this;
        }

        public Criteria andChatLessThanOrEqualTo(String value) {
            addCriterion("chat <=", value, "chat");
            return (Criteria) this;
        }

        public Criteria andChatLike(String value) {
            addCriterion("chat like", value, "chat");
            return (Criteria) this;
        }

        public Criteria andChatNotLike(String value) {
            addCriterion("chat not like", value, "chat");
            return (Criteria) this;
        }

        public Criteria andChatIn(List<String> values) {
            addCriterion("chat in", values, "chat");
            return (Criteria) this;
        }

        public Criteria andChatNotIn(List<String> values) {
            addCriterion("chat not in", values, "chat");
            return (Criteria) this;
        }

        public Criteria andChatBetween(String value1, String value2) {
            addCriterion("chat between", value1, value2, "chat");
            return (Criteria) this;
        }

        public Criteria andChatNotBetween(String value1, String value2) {
            addCriterion("chat not between", value1, value2, "chat");
            return (Criteria) this;
        }

        public Criteria andImgIsNull() {
            addCriterion("img is null");
            return (Criteria) this;
        }

        public Criteria andImgIsNotNull() {
            addCriterion("img is not null");
            return (Criteria) this;
        }

        public Criteria andImgEqualTo(String value) {
            addCriterion("img =", value, "img");
            return (Criteria) this;
        }

        public Criteria andImgNotEqualTo(String value) {
            addCriterion("img <>", value, "img");
            return (Criteria) this;
        }

        public Criteria andImgGreaterThan(String value) {
            addCriterion("img >", value, "img");
            return (Criteria) this;
        }

        public Criteria andImgGreaterThanOrEqualTo(String value) {
            addCriterion("img >=", value, "img");
            return (Criteria) this;
        }

        public Criteria andImgLessThan(String value) {
            addCriterion("img <", value, "img");
            return (Criteria) this;
        }

        public Criteria andImgLessThanOrEqualTo(String value) {
            addCriterion("img <=", value, "img");
            return (Criteria) this;
        }

        public Criteria andImgLike(String value) {
            addCriterion("img like", value, "img");
            return (Criteria) this;
        }

        public Criteria andImgNotLike(String value) {
            addCriterion("img not like", value, "img");
            return (Criteria) this;
        }

        public Criteria andImgIn(List<String> values) {
            addCriterion("img in", values, "img");
            return (Criteria) this;
        }

        public Criteria andImgNotIn(List<String> values) {
            addCriterion("img not in", values, "img");
            return (Criteria) this;
        }

        public Criteria andImgBetween(String value1, String value2) {
            addCriterion("img between", value1, value2, "img");
            return (Criteria) this;
        }

        public Criteria andImgNotBetween(String value1, String value2) {
            addCriterion("img not between", value1, value2, "img");
            return (Criteria) this;
        }

        public Criteria andShouuseridIsNull() {
            addCriterion("shouuserid is null");
            return (Criteria) this;
        }

        public Criteria andShouuseridIsNotNull() {
            addCriterion("shouuserid is not null");
            return (Criteria) this;
        }

        public Criteria andShouuseridEqualTo(Integer value) {
            addCriterion("shouuserid =", value, "shouuserid");
            return (Criteria) this;
        }

        public Criteria andShouuseridNotEqualTo(Integer value) {
            addCriterion("shouuserid <>", value, "shouuserid");
            return (Criteria) this;
        }

        public Criteria andShouuseridGreaterThan(Integer value) {
            addCriterion("shouuserid >", value, "shouuserid");
            return (Criteria) this;
        }

        public Criteria andShouuseridGreaterThanOrEqualTo(Integer value) {
            addCriterion("shouuserid >=", value, "shouuserid");
            return (Criteria) this;
        }

        public Criteria andShouuseridLessThan(Integer value) {
            addCriterion("shouuserid <", value, "shouuserid");
            return (Criteria) this;
        }

        public Criteria andShouuseridLessThanOrEqualTo(Integer value) {
            addCriterion("shouuserid <=", value, "shouuserid");
            return (Criteria) this;
        }

        public Criteria andShouuseridIn(List<Integer> values) {
            addCriterion("shouuserid in", values, "shouuserid");
            return (Criteria) this;
        }

        public Criteria andShouuseridNotIn(List<Integer> values) {
            addCriterion("shouuserid not in", values, "shouuserid");
            return (Criteria) this;
        }

        public Criteria andShouuseridBetween(Integer value1, Integer value2) {
            addCriterion("shouuserid between", value1, value2, "shouuserid");
            return (Criteria) this;
        }

        public Criteria andShouuseridNotBetween(Integer value1, Integer value2) {
            addCriterion("shouuserid not between", value1, value2, "shouuserid");
            return (Criteria) this;
        }

        public Criteria andTimeIsNull() {
            addCriterion("time is null");
            return (Criteria) this;
        }

        public Criteria andTimeIsNotNull() {
            addCriterion("time is not null");
            return (Criteria) this;
        }

        public Criteria andTimeEqualTo(Date value) {
            addCriterion("time =", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeNotEqualTo(Date value) {
            addCriterion("time <>", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeGreaterThan(Date value) {
            addCriterion("time >", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("time >=", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeLessThan(Date value) {
            addCriterion("time <", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeLessThanOrEqualTo(Date value) {
            addCriterion("time <=", value, "time");
            return (Criteria) this;
        }

        public Criteria andTimeIn(List<Date> values) {
            addCriterion("time in", values, "time");
            return (Criteria) this;
        }

        public Criteria andTimeNotIn(List<Date> values) {
            addCriterion("time not in", values, "time");
            return (Criteria) this;
        }

        public Criteria andTimeBetween(Date value1, Date value2) {
            addCriterion("time between", value1, value2, "time");
            return (Criteria) this;
        }

        public Criteria andTimeNotBetween(Date value1, Date value2) {
            addCriterion("time not between", value1, value2, "time");
            return (Criteria) this;
        }

        public Criteria andXleiIsNull() {
            addCriterion("xlei is null");
            return (Criteria) this;
        }

        public Criteria andXleiIsNotNull() {
            addCriterion("xlei is not null");
            return (Criteria) this;
        }

        public Criteria andXleiEqualTo(Integer value) {
            addCriterion("xlei =", value, "xlei");
            return (Criteria) this;
        }

        public Criteria andXleiNotEqualTo(Integer value) {
            addCriterion("xlei <>", value, "xlei");
            return (Criteria) this;
        }

        public Criteria andXleiGreaterThan(Integer value) {
            addCriterion("xlei >", value, "xlei");
            return (Criteria) this;
        }

        public Criteria andXleiGreaterThanOrEqualTo(Integer value) {
            addCriterion("xlei >=", value, "xlei");
            return (Criteria) this;
        }

        public Criteria andXleiLessThan(Integer value) {
            addCriterion("xlei <", value, "xlei");
            return (Criteria) this;
        }

        public Criteria andXleiLessThanOrEqualTo(Integer value) {
            addCriterion("xlei <=", value, "xlei");
            return (Criteria) this;
        }

        public Criteria andXleiIn(List<Integer> values) {
            addCriterion("xlei in", values, "xlei");
            return (Criteria) this;
        }

        public Criteria andXleiNotIn(List<Integer> values) {
            addCriterion("xlei not in", values, "xlei");
            return (Criteria) this;
        }

        public Criteria andXleiBetween(Integer value1, Integer value2) {
            addCriterion("xlei between", value1, value2, "xlei");
            return (Criteria) this;
        }

        public Criteria andXleiNotBetween(Integer value1, Integer value2) {
            addCriterion("xlei not between", value1, value2, "xlei");
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