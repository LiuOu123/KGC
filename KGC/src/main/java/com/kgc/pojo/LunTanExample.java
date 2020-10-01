package com.kgc.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class LunTanExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public LunTanExample() {
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

        public Criteria andTitleIsNull() {
            addCriterion("title is null");
            return (Criteria) this;
        }

        public Criteria andTitleIsNotNull() {
            addCriterion("title is not null");
            return (Criteria) this;
        }

        public Criteria andTitleEqualTo(String value) {
            addCriterion("title =", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotEqualTo(String value) {
            addCriterion("title <>", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleGreaterThan(String value) {
            addCriterion("title >", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleGreaterThanOrEqualTo(String value) {
            addCriterion("title >=", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleLessThan(String value) {
            addCriterion("title <", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleLessThanOrEqualTo(String value) {
            addCriterion("title <=", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleLike(String value) {
            addCriterion("title like", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotLike(String value) {
            addCriterion("title not like", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleIn(List<String> values) {
            addCriterion("title in", values, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotIn(List<String> values) {
            addCriterion("title not in", values, "title");
            return (Criteria) this;
        }

        public Criteria andTitleBetween(String value1, String value2) {
            addCriterion("title between", value1, value2, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotBetween(String value1, String value2) {
            addCriterion("title not between", value1, value2, "title");
            return (Criteria) this;
        }

        public Criteria andNeirongIsNull() {
            addCriterion("neirong is null");
            return (Criteria) this;
        }

        public Criteria andNeirongIsNotNull() {
            addCriterion("neirong is not null");
            return (Criteria) this;
        }

        public Criteria andNeirongEqualTo(String value) {
            addCriterion("neirong =", value, "neirong");
            return (Criteria) this;
        }

        public Criteria andNeirongNotEqualTo(String value) {
            addCriterion("neirong <>", value, "neirong");
            return (Criteria) this;
        }

        public Criteria andNeirongGreaterThan(String value) {
            addCriterion("neirong >", value, "neirong");
            return (Criteria) this;
        }

        public Criteria andNeirongGreaterThanOrEqualTo(String value) {
            addCriterion("neirong >=", value, "neirong");
            return (Criteria) this;
        }

        public Criteria andNeirongLessThan(String value) {
            addCriterion("neirong <", value, "neirong");
            return (Criteria) this;
        }

        public Criteria andNeirongLessThanOrEqualTo(String value) {
            addCriterion("neirong <=", value, "neirong");
            return (Criteria) this;
        }

        public Criteria andNeirongLike(String value) {
            addCriterion("neirong like", value, "neirong");
            return (Criteria) this;
        }

        public Criteria andNeirongNotLike(String value) {
            addCriterion("neirong not like", value, "neirong");
            return (Criteria) this;
        }

        public Criteria andNeirongIn(List<String> values) {
            addCriterion("neirong in", values, "neirong");
            return (Criteria) this;
        }

        public Criteria andNeirongNotIn(List<String> values) {
            addCriterion("neirong not in", values, "neirong");
            return (Criteria) this;
        }

        public Criteria andNeirongBetween(String value1, String value2) {
            addCriterion("neirong between", value1, value2, "neirong");
            return (Criteria) this;
        }

        public Criteria andNeirongNotBetween(String value1, String value2) {
            addCriterion("neirong not between", value1, value2, "neirong");
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

        public Criteria andLiulanliangIsNull() {
            addCriterion("liulanliang is null");
            return (Criteria) this;
        }

        public Criteria andLiulanliangIsNotNull() {
            addCriterion("liulanliang is not null");
            return (Criteria) this;
        }

        public Criteria andLiulanliangEqualTo(Integer value) {
            addCriterion("liulanliang =", value, "liulanliang");
            return (Criteria) this;
        }

        public Criteria andLiulanliangNotEqualTo(Integer value) {
            addCriterion("liulanliang <>", value, "liulanliang");
            return (Criteria) this;
        }

        public Criteria andLiulanliangGreaterThan(Integer value) {
            addCriterion("liulanliang >", value, "liulanliang");
            return (Criteria) this;
        }

        public Criteria andLiulanliangGreaterThanOrEqualTo(Integer value) {
            addCriterion("liulanliang >=", value, "liulanliang");
            return (Criteria) this;
        }

        public Criteria andLiulanliangLessThan(Integer value) {
            addCriterion("liulanliang <", value, "liulanliang");
            return (Criteria) this;
        }

        public Criteria andLiulanliangLessThanOrEqualTo(Integer value) {
            addCriterion("liulanliang <=", value, "liulanliang");
            return (Criteria) this;
        }

        public Criteria andLiulanliangIn(List<Integer> values) {
            addCriterion("liulanliang in", values, "liulanliang");
            return (Criteria) this;
        }

        public Criteria andLiulanliangNotIn(List<Integer> values) {
            addCriterion("liulanliang not in", values, "liulanliang");
            return (Criteria) this;
        }

        public Criteria andLiulanliangBetween(Integer value1, Integer value2) {
            addCriterion("liulanliang between", value1, value2, "liulanliang");
            return (Criteria) this;
        }

        public Criteria andLiulanliangNotBetween(Integer value1, Integer value2) {
            addCriterion("liulanliang not between", value1, value2, "liulanliang");
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

        public Criteria andWanjieIsNull() {
            addCriterion("wanjie is null");
            return (Criteria) this;
        }

        public Criteria andWanjieIsNotNull() {
            addCriterion("wanjie is not null");
            return (Criteria) this;
        }

        public Criteria andWanjieEqualTo(Integer value) {
            addCriterion("wanjie =", value, "wanjie");
            return (Criteria) this;
        }

        public Criteria andWanjieNotEqualTo(Integer value) {
            addCriterion("wanjie <>", value, "wanjie");
            return (Criteria) this;
        }

        public Criteria andWanjieGreaterThan(Integer value) {
            addCriterion("wanjie >", value, "wanjie");
            return (Criteria) this;
        }

        public Criteria andWanjieGreaterThanOrEqualTo(Integer value) {
            addCriterion("wanjie >=", value, "wanjie");
            return (Criteria) this;
        }

        public Criteria andWanjieLessThan(Integer value) {
            addCriterion("wanjie <", value, "wanjie");
            return (Criteria) this;
        }

        public Criteria andWanjieLessThanOrEqualTo(Integer value) {
            addCriterion("wanjie <=", value, "wanjie");
            return (Criteria) this;
        }

        public Criteria andWanjieIn(List<Integer> values) {
            addCriterion("wanjie in", values, "wanjie");
            return (Criteria) this;
        }

        public Criteria andWanjieNotIn(List<Integer> values) {
            addCriterion("wanjie not in", values, "wanjie");
            return (Criteria) this;
        }

        public Criteria andWanjieBetween(Integer value1, Integer value2) {
            addCriterion("wanjie between", value1, value2, "wanjie");
            return (Criteria) this;
        }

        public Criteria andWanjieNotBetween(Integer value1, Integer value2) {
            addCriterion("wanjie not between", value1, value2, "wanjie");
            return (Criteria) this;
        }

        public Criteria andJingtieIsNull() {
            addCriterion("jingtie is null");
            return (Criteria) this;
        }

        public Criteria andJingtieIsNotNull() {
            addCriterion("jingtie is not null");
            return (Criteria) this;
        }

        public Criteria andJingtieEqualTo(Integer value) {
            addCriterion("jingtie =", value, "jingtie");
            return (Criteria) this;
        }

        public Criteria andJingtieNotEqualTo(Integer value) {
            addCriterion("jingtie <>", value, "jingtie");
            return (Criteria) this;
        }

        public Criteria andJingtieGreaterThan(Integer value) {
            addCriterion("jingtie >", value, "jingtie");
            return (Criteria) this;
        }

        public Criteria andJingtieGreaterThanOrEqualTo(Integer value) {
            addCriterion("jingtie >=", value, "jingtie");
            return (Criteria) this;
        }

        public Criteria andJingtieLessThan(Integer value) {
            addCriterion("jingtie <", value, "jingtie");
            return (Criteria) this;
        }

        public Criteria andJingtieLessThanOrEqualTo(Integer value) {
            addCriterion("jingtie <=", value, "jingtie");
            return (Criteria) this;
        }

        public Criteria andJingtieIn(List<Integer> values) {
            addCriterion("jingtie in", values, "jingtie");
            return (Criteria) this;
        }

        public Criteria andJingtieNotIn(List<Integer> values) {
            addCriterion("jingtie not in", values, "jingtie");
            return (Criteria) this;
        }

        public Criteria andJingtieBetween(Integer value1, Integer value2) {
            addCriterion("jingtie between", value1, value2, "jingtie");
            return (Criteria) this;
        }

        public Criteria andJingtieNotBetween(Integer value1, Integer value2) {
            addCriterion("jingtie not between", value1, value2, "jingtie");
            return (Criteria) this;
        }

        public Criteria andTypeIsNull() {
            addCriterion("type is null");
            return (Criteria) this;
        }

        public Criteria andTypeIsNotNull() {
            addCriterion("type is not null");
            return (Criteria) this;
        }

        public Criteria andTypeEqualTo(Integer value) {
            addCriterion("type =", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeNotEqualTo(Integer value) {
            addCriterion("type <>", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeGreaterThan(Integer value) {
            addCriterion("type >", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeGreaterThanOrEqualTo(Integer value) {
            addCriterion("type >=", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeLessThan(Integer value) {
            addCriterion("type <", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeLessThanOrEqualTo(Integer value) {
            addCriterion("type <=", value, "type");
            return (Criteria) this;
        }

        public Criteria andTypeIn(List<Integer> values) {
            addCriterion("type in", values, "type");
            return (Criteria) this;
        }

        public Criteria andTypeNotIn(List<Integer> values) {
            addCriterion("type not in", values, "type");
            return (Criteria) this;
        }

        public Criteria andTypeBetween(Integer value1, Integer value2) {
            addCriterion("type between", value1, value2, "type");
            return (Criteria) this;
        }

        public Criteria andTypeNotBetween(Integer value1, Integer value2) {
            addCriterion("type not between", value1, value2, "type");
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