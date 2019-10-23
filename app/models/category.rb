class Category < ActiveHash::Base
  self.data = [
      {id: 1, name: 'ジムトレーニング'}, {id: 2, name: '水泳'}, {id: 3, name: 'ボクシング'},
      {id: 4, name: '腹筋'}, {id: 5, name: '背筋'}, {id: 6, name: '胸筋'},
      {id: 7, name: '腕の筋肉'}, {id: 8, name: '足の筋肉'}, {id: 9, name: '肩の筋肉'},
      {id: 10, name: '脳筋'}
  ]
end