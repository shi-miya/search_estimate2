class Employee < ActiveHash::Base
  self.data = [
    {id:  1, name: '犬田'}, {id:  2, name: '猫山'}, {id:  3, name: '馬西'},
    {id:  4, name: '猿谷'}, {id:  5, name: '狸村'}, {id:  6, name: '犬井'},
    {id:  7, name: '猫森'}, {id:  8, name: '馬渡'}, {id:  9, name: '猿下'},
    {id: 10, name: '狸山'}, {id: 11, name: '鹿田'}, {id: 12, name: '鳥山'},
    {id: 13, name: '鳥谷'}, {id: 14, name: '烏丸'}, {id: 15, name: '犬西'},
    {id: 16, name: '猿渡'}, {id: 17, name: '鹿島'}, {id: 18, name: 'ワンヤマ'}
  ]
end