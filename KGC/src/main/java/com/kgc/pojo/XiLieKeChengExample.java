package com.kgc.pojo;

import java.util.ArrayList;
import java.util.List;

public class XiLieKeChengExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public XiLieKeChengExample() {
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

        public Criteria andNameIsNull() {
            addCriterion("name is null");
            return (Criteria) this;
        }

        public Criteria andNameIsNotNull() {
            addCriterion("name is not null");
            return (Criteria) this;
        }

        public Criteria andNameEqualTo(String value) {
            addCriterion("name =", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotEqualTo(String value) {
            addCriterion("name <>", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThan(String value) {
            addCriterion("name >", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThanOrEqualTo(String value) {
            addCriterion("name >=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThan(String value) {
            addCriterion("name <", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThanOrEqualTo(String value) {
            addCriterion("name <=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLike(String value) {
            addCriterion("name like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotLike(String value) {
            addCriterion("name not like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameIn(List<String> values) {
            addCriterion("name in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotIn(List<String> values) {
            addCriterion("name not in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameBetween(String value1, String value2) {
            addCriterion("name between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotBetween(String value1, String value2) {
            addCriterion("name not between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andKenumIsNull() {
            addCriterion("kenum is null");
            return (Criteria) this;
        }

        public Criteria andKenumIsNotNull() {
            addCriterion("kenum is not null");
            return (Criteria) this;
        }

        public Criteria andKenumEqualTo(Integer value) {
            addCriterion("kenum =", value, "kenum");
            return (Criteria) this;
        }

        public Criteria andKenumNotEqualTo(Integer value) {
            addCriterion("kenum <>", value, "kenum");
            return (Criteria) this;
        }

        public Criteria andKenumGreaterThan(Integer value) {
            addCriterion("kenum >", value, "kenum");
            return (Criteria) this;
        }

        public Criteria andKenumGreaterThanOrEqualTo(Integer value) {
            addCriterion("kenum >=", value, "kenum");
            return (Criteria) this;
        }

        public Criteria andKenumLessThan(Integer value) {
            addCriterion("kenum <", value, "kenum");
            return (Criteria) this;
        }

        public Criteria andKenumLessThanOrEqualTo(Integer value) {
            addCriterion("kenum <=", value, "kenum");
            return (Criteria) this;
        }

        public Criteria andKenumIn(List<Integer> values) {
            addCriterion("kenum in", values, "kenum");
            return (Criteria) this;
        }

        public Criteria andKenumNotIn(List<Integer> values) {
            addCriterion("kenum not in", values, "kenum");
            return (Criteria) this;
        }

        public Criteria andKenumBetween(Integer value1, Integer value2) {
            addCriterion("kenum between", value1, value2, "kenum");
            return (Criteria) this;
        }

        public Criteria andKenumNotBetween(Integer value1, Integer value2) {
            addCriterion("kenum not between", value1, value2, "kenum");
            return (Criteria) this;
        }

        public Criteria andQiIsNull() {
            addCriterion("qi is null");
            return (Criteria) this;
        }

        public Criteria andQiIsNotNull() {
            addCriterion("qi is not null");
            return (Criteria) this;
        }

        public Criteria andQiEqualTo(Integer value) {
            addCriterion("qi =", value, "qi");
            return (Criteria) this;
        }

        public Criteria andQiNotEqualTo(Integer value) {
            addCriterion("qi <>", value, "qi");
            return (Criteria) this;
        }

        public Criteria andQiGreaterThan(Integer value) {
            addCriterion("qi >", value, "qi");
            return (Criteria) this;
        }

        public Criteria andQiGreaterThanOrEqualTo(Integer value) {
            addCriterion("qi >=", value, "qi");
            return (Criteria) this;
        }

        public Criteria andQiLessThan(Integer value) {
            addCriterion("qi <", value, "qi");
            return (Criteria) this;
        }

        public Criteria andQiLessThanOrEqualTo(Integer value) {
            addCriterion("qi <=", value, "qi");
            return (Criteria) this;
        }

        public Criteria andQiIn(List<Integer> values) {
            addCriterion("qi in", values, "qi");
            return (Criteria) this;
        }

        public Criteria andQiNotIn(List<Integer> values) {
            addCriterion("qi not in", values, "qi");
            return (Criteria) this;
        }

        public Criteria andQiBetween(Integer value1, Integer value2) {
            addCriterion("qi between", value1, value2, "qi");
            return (Criteria) this;
        }

        public Criteria andQiNotBetween(Integer value1, Integer value2) {
            addCriterion("qi not between", value1, value2, "qi");
            return (Criteria) this;
        }

        public Criteria andPeopleIsNull() {
            addCriterion("people is null");
            return (Criteria) this;
        }

        public Criteria andPeopleIsNotNull() {
            addCriterion("people is not null");
            return (Criteria) this;
        }

        public Criteria andPeopleEqualTo(Integer value) {
            addCriterion("people =", value, "people");
            return (Criteria) this;
        }

        public Criteria andPeopleNotEqualTo(Integer value) {
            addCriterion("people <>", value, "people");
            return (Criteria) this;
        }

        public Criteria andPeopleGreaterThan(Integer value) {
            addCriterion("people >", value, "people");
            return (Criteria) this;
        }

        public Criteria andPeopleGreaterThanOrEqualTo(Integer value) {
            addCriterion("people >=", value, "people");
            return (Criteria) this;
        }

        public Criteria andPeopleLessThan(Integer value) {
            addCriterion("people <", value, "people");
            return (Criteria) this;
        }

        public Criteria andPeopleLessThanOrEqualTo(Integer value) {
            addCriterion("people <=", value, "people");
            return (Criteria) this;
        }

        public Criteria andPeopleIn(List<Integer> values) {
            addCriterion("people in", values, "people");
            return (Criteria) this;
        }

        public Criteria andPeopleNotIn(List<Integer> values) {
            addCriterion("people not in", values, "people");
            return (Criteria) this;
        }

        public Criteria andPeopleBetween(Integer value1, Integer value2) {
            addCriterion("people between", value1, value2, "people");
            return (Criteria) this;
        }

        public Criteria andPeopleNotBetween(Integer value1, Integer value2) {
            addCriterion("people not between", value1, value2, "people");
            return (Criteria) this;
        }

        public Criteria andPriceIsNull() {
            addCriterion("price is null");
            return (Criteria) this;
        }

        public Criteria andPriceIsNotNull() {
            addCriterion("price is not null");
            return (Criteria) this;
        }

        public Criteria andPriceEqualTo(String value) {
            addCriterion("price =", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceNotEqualTo(String value) {
            addCriterion("price <>", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceGreaterThan(String value) {
            addCriterion("price >", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceGreaterThanOrEqualTo(String value) {
            addCriterion("price >=", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceLessThan(String value) {
            addCriterion("price <", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceLessThanOrEqualTo(String value) {
            addCriterion("price <=", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceLike(String value) {
            addCriterion("price like", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceNotLike(String value) {
            addCriterion("price not like", value, "price");
            return (Criteria) this;
        }

        public Criteria andPriceIn(List<String> values) {
            addCriterion("price in", values, "price");
            return (Criteria) this;
        }

        public Criteria andPriceNotIn(List<String> values) {
            addCriterion("price not in", values, "price");
            return (Criteria) this;
        }

        public Criteria andPriceBetween(String value1, String value2) {
            addCriterion("price between", value1, value2, "price");
            return (Criteria) this;
        }

        public Criteria andPriceNotBetween(String value1, String value2) {
            addCriterion("price not between", value1, value2, "price");
            return (Criteria) this;
        }

        public Criteria andJieIsNull() {
            addCriterion("jie is null");
            return (Criteria) this;
        }

        public Criteria andJieIsNotNull() {
            addCriterion("jie is not null");
            return (Criteria) this;
        }

        public Criteria andJieEqualTo(String value) {
            addCriterion("jie =", value, "jie");
            return (Criteria) this;
        }

        public Criteria andJieNotEqualTo(String value) {
            addCriterion("jie <>", value, "jie");
            return (Criteria) this;
        }

        public Criteria andJieGreaterThan(String value) {
            addCriterion("jie >", value, "jie");
            return (Criteria) this;
        }

        public Criteria andJieGreaterThanOrEqualTo(String value) {
            addCriterion("jie >=", value, "jie");
            return (Criteria) this;
        }

        public Criteria andJieLessThan(String value) {
            addCriterion("jie <", value, "jie");
            return (Criteria) this;
        }

        public Criteria andJieLessThanOrEqualTo(String value) {
            addCriterion("jie <=", value, "jie");
            return (Criteria) this;
        }

        public Criteria andJieLike(String value) {
            addCriterion("jie like", value, "jie");
            return (Criteria) this;
        }

        public Criteria andJieNotLike(String value) {
            addCriterion("jie not like", value, "jie");
            return (Criteria) this;
        }

        public Criteria andJieIn(List<String> values) {
            addCriterion("jie in", values, "jie");
            return (Criteria) this;
        }

        public Criteria andJieNotIn(List<String> values) {
            addCriterion("jie not in", values, "jie");
            return (Criteria) this;
        }

        public Criteria andJieBetween(String value1, String value2) {
            addCriterion("jie between", value1, value2, "jie");
            return (Criteria) this;
        }

        public Criteria andJieNotBetween(String value1, String value2) {
            addCriterion("jie not between", value1, value2, "jie");
            return (Criteria) this;
        }

        public Criteria andXiangIsNull() {
            addCriterion("xiang is null");
            return (Criteria) this;
        }

        public Criteria andXiangIsNotNull() {
            addCriterion("xiang is not null");
            return (Criteria) this;
        }

        public Criteria andXiangEqualTo(String value) {
            addCriterion("xiang =", value, "xiang");
            return (Criteria) this;
        }

        public Criteria andXiangNotEqualTo(String value) {
            addCriterion("xiang <>", value, "xiang");
            return (Criteria) this;
        }

        public Criteria andXiangGreaterThan(String value) {
            addCriterion("xiang >", value, "xiang");
            return (Criteria) this;
        }

        public Criteria andXiangGreaterThanOrEqualTo(String value) {
            addCriterion("xiang >=", value, "xiang");
            return (Criteria) this;
        }

        public Criteria andXiangLessThan(String value) {
            addCriterion("xiang <", value, "xiang");
            return (Criteria) this;
        }

        public Criteria andXiangLessThanOrEqualTo(String value) {
            addCriterion("xiang <=", value, "xiang");
            return (Criteria) this;
        }

        public Criteria andXiangLike(String value) {
            addCriterion("xiang like", value, "xiang");
            return (Criteria) this;
        }

        public Criteria andXiangNotLike(String value) {
            addCriterion("xiang not like", value, "xiang");
            return (Criteria) this;
        }

        public Criteria andXiangIn(List<String> values) {
            addCriterion("xiang in", values, "xiang");
            return (Criteria) this;
        }

        public Criteria andXiangNotIn(List<String> values) {
            addCriterion("xiang not in", values, "xiang");
            return (Criteria) this;
        }

        public Criteria andXiangBetween(String value1, String value2) {
            addCriterion("xiang between", value1, value2, "xiang");
            return (Criteria) this;
        }

        public Criteria andXiangNotBetween(String value1, String value2) {
            addCriterion("xiang not between", value1, value2, "xiang");
            return (Criteria) this;
        }

        public Criteria andTnameIsNull() {
            addCriterion("tname is null");
            return (Criteria) this;
        }

        public Criteria andTnameIsNotNull() {
            addCriterion("tname is not null");
            return (Criteria) this;
        }

        public Criteria andTnameEqualTo(String value) {
            addCriterion("tname =", value, "tname");
            return (Criteria) this;
        }

        public Criteria andTnameNotEqualTo(String value) {
            addCriterion("tname <>", value, "tname");
            return (Criteria) this;
        }

        public Criteria andTnameGreaterThan(String value) {
            addCriterion("tname >", value, "tname");
            return (Criteria) this;
        }

        public Criteria andTnameGreaterThanOrEqualTo(String value) {
            addCriterion("tname >=", value, "tname");
            return (Criteria) this;
        }

        public Criteria andTnameLessThan(String value) {
            addCriterion("tname <", value, "tname");
            return (Criteria) this;
        }

        public Criteria andTnameLessThanOrEqualTo(String value) {
            addCriterion("tname <=", value, "tname");
            return (Criteria) this;
        }

        public Criteria andTnameLike(String value) {
            addCriterion("tname like", value, "tname");
            return (Criteria) this;
        }

        public Criteria andTnameNotLike(String value) {
            addCriterion("tname not like", value, "tname");
            return (Criteria) this;
        }

        public Criteria andTnameIn(List<String> values) {
            addCriterion("tname in", values, "tname");
            return (Criteria) this;
        }

        public Criteria andTnameNotIn(List<String> values) {
            addCriterion("tname not in", values, "tname");
            return (Criteria) this;
        }

        public Criteria andTnameBetween(String value1, String value2) {
            addCriterion("tname between", value1, value2, "tname");
            return (Criteria) this;
        }

        public Criteria andTnameNotBetween(String value1, String value2) {
            addCriterion("tname not between", value1, value2, "tname");
            return (Criteria) this;
        }

        public Criteria andTchatIsNull() {
            addCriterion("tchat is null");
            return (Criteria) this;
        }

        public Criteria andTchatIsNotNull() {
            addCriterion("tchat is not null");
            return (Criteria) this;
        }

        public Criteria andTchatEqualTo(String value) {
            addCriterion("tchat =", value, "tchat");
            return (Criteria) this;
        }

        public Criteria andTchatNotEqualTo(String value) {
            addCriterion("tchat <>", value, "tchat");
            return (Criteria) this;
        }

        public Criteria andTchatGreaterThan(String value) {
            addCriterion("tchat >", value, "tchat");
            return (Criteria) this;
        }

        public Criteria andTchatGreaterThanOrEqualTo(String value) {
            addCriterion("tchat >=", value, "tchat");
            return (Criteria) this;
        }

        public Criteria andTchatLessThan(String value) {
            addCriterion("tchat <", value, "tchat");
            return (Criteria) this;
        }

        public Criteria andTchatLessThanOrEqualTo(String value) {
            addCriterion("tchat <=", value, "tchat");
            return (Criteria) this;
        }

        public Criteria andTchatLike(String value) {
            addCriterion("tchat like", value, "tchat");
            return (Criteria) this;
        }

        public Criteria andTchatNotLike(String value) {
            addCriterion("tchat not like", value, "tchat");
            return (Criteria) this;
        }

        public Criteria andTchatIn(List<String> values) {
            addCriterion("tchat in", values, "tchat");
            return (Criteria) this;
        }

        public Criteria andTchatNotIn(List<String> values) {
            addCriterion("tchat not in", values, "tchat");
            return (Criteria) this;
        }

        public Criteria andTchatBetween(String value1, String value2) {
            addCriterion("tchat between", value1, value2, "tchat");
            return (Criteria) this;
        }

        public Criteria andTchatNotBetween(String value1, String value2) {
            addCriterion("tchat not between", value1, value2, "tchat");
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

        public Criteria andLeiEqualTo(String value) {
            addCriterion("lei =", value, "lei");
            return (Criteria) this;
        }

        public Criteria andLeiNotEqualTo(String value) {
            addCriterion("lei <>", value, "lei");
            return (Criteria) this;
        }

        public Criteria andLeiGreaterThan(String value) {
            addCriterion("lei >", value, "lei");
            return (Criteria) this;
        }

        public Criteria andLeiGreaterThanOrEqualTo(String value) {
            addCriterion("lei >=", value, "lei");
            return (Criteria) this;
        }

        public Criteria andLeiLessThan(String value) {
            addCriterion("lei <", value, "lei");
            return (Criteria) this;
        }

        public Criteria andLeiLessThanOrEqualTo(String value) {
            addCriterion("lei <=", value, "lei");
            return (Criteria) this;
        }

        public Criteria andLeiLike(String value) {
            addCriterion("lei like", value, "lei");
            return (Criteria) this;
        }

        public Criteria andLeiNotLike(String value) {
            addCriterion("lei not like", value, "lei");
            return (Criteria) this;
        }

        public Criteria andLeiIn(List<String> values) {
            addCriterion("lei in", values, "lei");
            return (Criteria) this;
        }

        public Criteria andLeiNotIn(List<String> values) {
            addCriterion("lei not in", values, "lei");
            return (Criteria) this;
        }

        public Criteria andLeiBetween(String value1, String value2) {
            addCriterion("lei between", value1, value2, "lei");
            return (Criteria) this;
        }

        public Criteria andLeiNotBetween(String value1, String value2) {
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