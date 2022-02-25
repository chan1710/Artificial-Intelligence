/*
 * Mon: Nhap mon Tri tue Nhan tao
 * Bai tap: Thuc hanh tuan 7
 * Sinh vien: Huynh Thi Bao Tran
 * MSSV: 19110482
*/

% Bai lam:

% de la dong vat an co
dong_vat_an_co(de).

% cho soi la dong vat hung du
dong_vat_hung_du(cho_soi).

% dong vat hung du la dong vat an thit
dong_vat_an_thit(X) :- dong_vat_hung_du(X).

% dong vat an thit thi an thit
an(X, thit) :- dong_vat_an_thit(X).
    
% dong vat an co thi an co
an(X, co) :- dong_vat_an_co(X).
    
% dong vat an thit thi an cac dong vat an co
an(X, dong_vat_an_co(Y)) :- dong_vat_an_thit(X).

% dong vat an thit va dong vat an co deu uong nuoc
uong(X, nuoc) :- dong_vat_an_co(X).
uong(X, nuoc) :- dong_vat_an_thit(X).

% moi dong vat tieu thu cai ma no uong va cai ma no an
tieu_thu(X, Y) :- uong(X, Y).
tieu_thu(X, Y) :- an(X, Y).

/* 
 * Hoi: co dong vat hung du khong va no tieu thu cai gi?
 * dong_vat_hung_du(X), tieu_thu(X, Y):
 * => X la cho_soi
 * => Y co the la de hoac thit hoac nuoc
 * Ket luan: Vay co dong vat hung du la cho soi, no tieu thu de hoac thit hoac nuoc
*/