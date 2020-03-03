INSERT INTO USERS
VALUES ('mnardone', 'nardone', true);
INSERT INTO AUTHORITIES
VALUES ('mnardone', 'ROLE_NARDONE_MEMBER');
COMMIT;

insert into GROUPS
values (1, 'GROUP_MEMBERS_NARDONE');
insert into GROUP_MEMBERS
values (1, 'mnardone');
insert into GROUP_AUTHORITIES
values (1, 'ROLE_NARDONE_MEMBER');