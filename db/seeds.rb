# Venue Create
p 'Venue create さいたまスーパーアリーナ'
Venue.create!(
  name: 'さいたまスーパーアリーナ',
  station: 'さいたま新都心',
  location: '埼玉県さいたま市中央区新都心8',
  walk: 3,
  latitude: 35.894956,
  longitude: 139.630767
)

Venue.create!(
  name: 'パシフィコ横浜',
  station: 'みなとみらい',
  location: '神奈川県横浜市西区みなとみらい1丁目1-1',
  walk: 5,
  latitude: 35.457611,
  longitude: 139.637399
)
