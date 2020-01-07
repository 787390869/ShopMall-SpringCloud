package base.BaseMQ;

public enum MQEnum {

    fanoutQueue1("fanoutQueue1", "fanoutExchange", ""),
    fanoutQueue2("fanoutQueue2", "fanoutExchange", ""),
    topicQueue1("topicQueue1", "topicExchange", "update.*"),
    topicQueue2("topicQueue2", "topicExchange", "add.*")
        ;

    private String queueName;
    private String exchangeName;
    private String routingKey;


    public String getQueueName() {
        return queueName;
    }

    public String getExchangeName() {
        return exchangeName;
    }

    public String getRoutingKey() {
        return routingKey;
    }

    MQEnum(String queueName, String exchangeName, String routingKey) {
        this.queueName = queueName;
        this.exchangeName = exchangeName;
        this.routingKey = routingKey;
    }

}
