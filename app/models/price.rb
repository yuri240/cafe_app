class Price < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: '~999' }, { id: 2, name: '1,000~1,999' }, { id: 3, name: '2,000~2,999' },
    { id: 4, name: '3,000~3,999' }, { id: 5, name: '4,000~4,999' }, { id: 6, name: '5,000~5,999' },
    { id: 7, name: '6,000~6,999' }, { id: 8, name: '7,000~7,999' }, { id: 9, name: '8,000~8,999' },
    { id: 10, name: '10,000~' }
  ]
end
