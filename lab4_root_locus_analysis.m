
% ----------- Transfer Function 1 -----------
% G(s)H(s) = k / [(s+4)(s+20)]

k_values = [1, 10, 100];
for i = 1:length(k_values)
    k = k_values(i);
    num = k;
    den = conv([1 4], [1 20]);  % (s+4)(s+20)
    sys = tf(num, den);

    figure;
    rlocus(sys);
    title(['Root Locus of TF 1 for k = ', num2str(k)]);

    figure;
    step(feedback(sys,1));
    title(['Step Response of TF 1 for k = ', num2str(k)]);
end

% ----------- Transfer Function 2 -----------
% G(s)H(s) = k / [s(s+4)(s+20)]

k_values = [0.1, 1, 10];
for i = 1:length(k_values)
    k = k_values(i);
    num = k;
    den = conv([1 0], conv([1 4], [1 20]));  % s*(s+4)*(s+20)
    sys = tf(num, den);

    figure;
    rlocus(sys);
    title(['Root Locus of TF 2 for k = ', num2str(k)]);

    figure;
    step(feedback(sys,1));
    title(['Step Response of TF 2 for k = ', num2str(k)]);
end

% ----------- Transfer Function 3 -----------
% G(s)H(s) = k(s+10) / [(s+4)(s+20)]

k_values = [0.1, 1, 10];
for i = 1:length(k_values)
    k = k_values(i);
    num = k * [1 10];  % (s+10)
    den = conv([1 4], [1 20]);  % (s+4)(s+20)
    sys = tf(num, den);

    figure;
    rlocus(sys);
    title(['Root Locus of TF 3 for k = ', num2str(k)]);

    figure;
    step(feedback(sys,1));
    title(['Step Response of TF 3 for k = ', num2str(k)]);
end
