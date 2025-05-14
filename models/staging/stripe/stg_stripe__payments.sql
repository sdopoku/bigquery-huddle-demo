with 

source as (

    select * from {{ source('stripe', 'payments') }}

),

renamed as (

    select
        id,
        orderid,
        paymentmethod,
        status,
        amount,
        created,
        _batched_at

    from source

)

select * from renamed
