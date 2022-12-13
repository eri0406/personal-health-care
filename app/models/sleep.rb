class Sleep < ActiveHash::Base
	self.data = [
		{ id: 1, name: '---'},
		{ id: 2, name: 'よく眠れた'},
		{ id: 3, name: '少し眠れた'},
		{ id: 4, name: 'あまり眠れなかった'},
		{ id: 5, name: '全く眠れなかった'}
	]

include ActiveHash::Associations
has_many :manegiments

end