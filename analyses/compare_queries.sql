{# in dbt Develop #}

{% set old_etl_relation=ref('customer_orders_pat_legacy') %}
{% set dbt_relation=ref('customer_orders_pat') %}

{{ audit_helper.compare_relations(
    a_relation=old_etl_relation,
    b_relation=dbt_relation,
    primary_key="order_id"
) }}