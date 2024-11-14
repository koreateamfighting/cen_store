const express = require('express');
const mysql = require('mysql2');
const bodyParser = require('body-parser');

const app = express();
const port = 3000;

app.use(bodyParser.json());

// MySQL 데이터베이스 연결 설정
const db = mysql.createConnection({
  host: 'cenplatform.cecuryzdqpeo.ap-northeast-2.rds.amazonaws.com',
  user: 'admin',
  password: 'dusrmatnftk8260',
  database: 'cenplatform'
});

db.connect((err) => {
  if (err) {
    console.error('MySQL 연결 오류:', err);
  } else {
    console.log('MySQL 연결 성공');
  }
});

// Read - assets 테이블의 모든 데이터 조회
app.get('/assets', (req, res) => {
  const sql = 'SELECT * FROM assets';
  db.query(sql, (err, results) => {
    if (err) {
      res.status(500).json({ error: '데이터 조회 실패' });
    } else {
      res.status(200).json(results);
    }
  });
});




// 서버 시작
app.listen(port, () => {
  console.log(`서버가 http://localhost:${port}에서 실행 중입니다.`);
});
