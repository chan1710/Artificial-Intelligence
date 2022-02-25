% Môn: Nhập môn Trí tuệ Nhân tạo
% Họ tên: Huỳnh Thị Bảo Trân
% MSSV: 19110482
% Bài: Thực hành 8

binh_X(X, Vx, Xc) :- (X =:= Vx -> Xc is 0; Xc is X).

binh_Y(Y, Vy, Yc) :- (Y =:= 0 -> Yc is Vy; Yc is Y).

dong_nuoc(Y, X, Vx, K, Xc, Yc) :- (Y =\= 0, X < Vx
                                  -> K is min(Y, Vx - X), Xc is X + K, Yc is Y - K).

thuc_hien(Vy, Vx, Y, X, Yc, Xc, K) :- 
    binh_Y(Y, Vy, Yc); 
    binh_X(X, Vx, Xc); 
    dong_nuoc(Y, X, Vx, K, Xc, Yc).

vong_lap(Vy, Vx, Y, X, Z, Yc, Xc, K) :- 
    (X \= Z, Y \= Z), 
    binh_Y(Y, Vy, Yc); 
    binh_X(X, Vx, Xc);
    dong_nuoc(Y, X, Vx, K, Xc, Yc), 
    vong_lap(Vy, Vx, Y, X, Z, Yc, Xc, K).