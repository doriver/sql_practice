SELECT * FROM `user`;
delete from `user`;
rollback;

/* 롤백 안먹힘, MySQL에서는 디폴트로 autocommit이 설정되있기떄문
세미콜론을 한 번 찍을 때마다 DB에서 자동으로 commit 해주는 시스템 */

select * from chickenbuyer;

start transaction; /* COMMIT, ROLLBACK이 나올 때까지 실행되는 모든 SQL 추적 */
delete from chickenbuyer;
rollback;

start transaction;
select * from chickenbuyer;
delete from chickenbuyer where id = 2;
rollback;

start transaction;
select * from chickenbuyer;
delete from chickenbuyer where id = 3;
commit;
rollback; /* 윗줄에서 commit 해서 롤백해도 변화 없음*/


/* save point를 지정하면, 그곳까지만 rollback하는 것도 가능 */
start transaction;
select * from chickenbuyer;

delete from chickenbuyer where id = 5;
savepoint A;

delete from chickenbuyer where id = 1;
rollback to A;
delete from chickenbuyer where id = 7;

rollback;



/* DDL문 (table조작 및 칼럼 조작)은 transaction의 rollback 대상이 아니다 */
start transaction;

create table trs (
	`id` int,
    `name` varchar(32)
);
rollback;
select * from trs; /* 테이블 그대로 남아있음 */