1. Вывести ко-во незаблокированных юзеров не из Germany
db.users.countDocuments(
    {
        country: { $ne: 'Germany' },
        is_blocked: {$ne : true}
    }
)

2. Вывести имена юзеров не из Germany
db.users.find(
    {
        is_blocked: { $ne: true },
        country: { $ne: 'Germany'},
       
    },
    { _id: 0, fullname: 1}
)

3. Уменьшить баланс заблокированных юзеров на 5%
db.users.updateMany(
    {is_blocked: { $ne: true }},
    {$mul : {balance: 0.95}}
    
)

4. Вывести название треков продолжительностью от 1 до 10 мин
db.tracks.find(
    { duration_secs: { $gte: 1 * 60, $lte: 10 * 60 } },
    {_id:0, title:1}
)

5. Разблокировать юзеров из France
db.users.updateMany(
    { country: 'France' }, 
    { $set: { is_blocked: false } } 
)