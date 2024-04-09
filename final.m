rtd = csvread('All_Raw_Data_Active_and_Sham_CSV.csv');
X = find(rtd(:,1) == 1); % finding indices of all active groups (col1 == 1)
Y = find(rtd(:,1) == 0); % finding indices of all sham groups (col1 == 0)
Z1 = find(rtd(:,3) == 1); % finding indices of pre-stimulation epoch (col3 == 1)
K_auditory  = find(rtd(:,5) == 2); % finding indices of visual condition (col5 == 2)
K_bimodal  = find(rtd(:,5) == 1); % finding indices of bimodal condition (col5 == 1)
K_visual  = find(rtd(:,5) == 3); % finding indices of visual condition (col5 == 3)
Z2 = find(rtd(:,3) == 2); % finding indices of pre-stimulation epoch (col3 == 1)


temp2_pre_auditory = intersect(Z1, K_auditory ); % finding common indices
RT2_active_pre_auditory = intersect(X, temp2_pre_auditory); % identifying rows of interest
RT2_vector_active_pre_auditory = rtd(RT2_active_pre_auditory, 6); 
rtd_reshaped_active_pre_auditory = reshape(RT2_vector_active_pre_auditory, 50, 10);
tf=0.5;
rtd_active_outliers_active_pre_auditory=filloutliers(rtd_reshaped_active_pre_auditory,NaN,'ThresholdFactor',tf);
mean_columns_active_pre_auditory = nanmean(rtd_active_outliers_active_pre_auditory);

temp2_pre_auditory = intersect(Z1, K_auditory ); % finding common indices
RT2_sham_pre_auditory = intersect(Y, temp2_pre_auditory); % identifying rows of interest
RT2_vector_sham_pre_auditory = rtd(RT2_sham_pre_auditory, 6); 
rtd_reshaped_sham_pre_auditory = reshape(RT2_vector_sham_pre_auditory, 50, 11);
tf=0.5;
rtd_sham_outliers_sham_pre_auditory=filloutliers(rtd_reshaped_sham_pre_auditory,NaN,'ThresholdFactor',tf);
mean_columns_sham_pre_auditory = nanmean(rtd_sham_outliers_sham_pre_auditory);

temp2_post_auditory = intersect(Z2, K_auditory ); % finding common indices
RT2_active_post_auditory = intersect(X, temp2_post_auditory); % identifying rows of interest
RT2_vector_active_post_auditory = rtd(RT2_active_post_auditory, 6); 
rtd_reshaped_active_post_auditory = reshape(RT2_vector_active_post_auditory, 50, 10);
tf=0.5;
rtd_active_outliers_active_post_auditory=filloutliers(rtd_reshaped_active_post_auditory,NaN,'ThresholdFactor',tf);
mean_columns_active_post_auditory = nanmean(rtd_active_outliers_active_post_auditory);

temp2_post_auditory = intersect(Z2, K_auditory ); % finding common indices
RT2_sham_post_auditory = intersect(Y, temp2_post_auditory); % identifying rows of interest
RT2_vector_sham_post_auditory = rtd(RT2_sham_post_auditory, 6); 
rtd_reshaped_sham_post_auditory = reshape(RT2_vector_sham_post_auditory, 50, 11);
tf=0.5;
rtd_sham_outliers_sham_post_auditory=filloutliers(rtd_reshaped_sham_post_auditory,NaN,'ThresholdFactor',tf);
mean_columns_sham_post_auditory = nanmean(rtd_sham_outliers_sham_post_auditory);

temp2_pre_bimodal = intersect(Z1, K_bimodal ); % finding common indices
RT2_active_pre_bimodal = intersect(X, temp2_pre_bimodal); % identifying rows of interest
RT2_vector_active_pre_bimodal = rtd(RT2_active_pre_bimodal, 6); 
rtd_reshaped_active_pre_bimodal = reshape(RT2_vector_active_pre_bimodal, 50, 10);
tf=0.5;
rtd_active_outliers_active_pre_bimodal=filloutliers(rtd_reshaped_active_pre_bimodal,NaN,'ThresholdFactor',tf);
mean_columns_active_pre_bimodal = nanmean(rtd_active_outliers_active_pre_bimodal);

temp2_pre_bimodal = intersect(Z1, K_bimodal ); % finding common indices
RT2_sham_pre_bimodal = intersect(Y, temp2_pre_bimodal); % identifying rows of interest
RT2_vector_sham_pre_bimodal = rtd(RT2_sham_pre_bimodal, 6); 
rtd_reshaped_sham_pre_bimodal = reshape(RT2_vector_sham_pre_bimodal, 50, 11);
tf=0.5;
rtd_sham_outliers_sham_pre_bimodal=filloutliers(rtd_reshaped_sham_pre_bimodal,NaN,'ThresholdFactor',tf);
mean_columns_sham_pre_bimodal = nanmean(rtd_sham_outliers_sham_pre_bimodal);

temp2_post_bimodal = intersect(Z2, K_bimodal ); % finding common indices
RT2_active_post_bimodal = intersect(X, temp2_post_bimodal); % identifying rows of interest
RT2_vector_active_post_bimodal = rtd(RT2_active_post_bimodal, 6); 
rtd_reshaped_active_post_bimodal = reshape(RT2_vector_active_post_bimodal, 50, 10);
tf=0.5;
rtd_active_outliers_active_post_bimodal=filloutliers(rtd_reshaped_active_post_bimodal,NaN,'ThresholdFactor',tf);
mean_columns_active_post_bimodal = nanmean(rtd_active_outliers_active_post_bimodal);

temp2_post_bimodal = intersect(Z2, K_bimodal ); % finding common indices
RT2_sham_post_bimodal = intersect(Y, temp2_post_bimodal); % identifying rows of interest
RT2_vector_sham_post_bimodal = rtd(RT2_sham_post_bimodal, 6); 
rtd_reshaped_sham_post_bimodal = reshape(RT2_vector_sham_post_bimodal, 50, 11);
tf=0.5;
rtd_sham_outliers_sham_post_bimodal=filloutliers(rtd_reshaped_sham_post_bimodal,NaN,'ThresholdFactor',tf);
mean_columns_sham_post_bimodal = nanmean(rtd_sham_outliers_sham_post_bimodal);


temp2_pre_visual = intersect(Z1, K_visual ); % finding common indices
RT2_active_pre_visual = intersect(X, temp2_pre_visual); % identifying rows of interest
RT2_vector_active_pre_visual = rtd(RT2_active_pre_visual, 6); 
rtd_reshaped_active_pre_visual = reshape(RT2_vector_active_pre_visual, 50, 10);
tf=0.5;
rtd_active_outliers_active_pre_visual=filloutliers(rtd_reshaped_active_pre_visual,NaN,'ThresholdFactor',tf);
mean_columns_active_pre_visual = nanmean(rtd_active_outliers_active_pre_visual);

temp2_pre_visual = intersect(Z1, K_visual ); % finding common indices
RT2_sham_pre_visual = intersect(Y, temp2_pre_visual); % identifying rows of interest
RT2_vector_sham_pre_visual = rtd(RT2_sham_pre_visual, 6); 
rtd_reshaped_sham_pre_visual = reshape(RT2_vector_sham_pre_visual, 50, 11);
tf=0.5;
rtd_sham_outliers_sham_pre_visual=filloutliers(rtd_reshaped_sham_pre_visual,NaN,'ThresholdFactor',tf);
mean_columns_sham_pre_visual = nanmean(rtd_sham_outliers_sham_pre_visual);

temp2_post_visual = intersect(Z2, K_visual ); % finding common indices
RT2_active_post_visual = intersect(X, temp2_post_visual); % identifying rows of interest
RT2_vector_active_post_visual = rtd(RT2_active_post_visual, 6); 
rtd_reshaped_active_post_visual = reshape(RT2_vector_active_post_visual, 50, 10);
tf=0.5;
rtd_active_outliers_active_post_visual=filloutliers(rtd_reshaped_active_post_visual,NaN,'ThresholdFactor',tf);
mean_columns_active_post_visual = nanmean(rtd_active_outliers_active_post_visual);

temp2_post_visual = intersect(Z2, K_visual ); % finding common indices
RT2_sham_post_visual = intersect(Y, temp2_post_visual); % identifying rows of interest
RT2_vector_sham_post_visual = rtd(RT2_sham_post_visual, 6); 
rtd_reshaped_sham_post_visual = reshape(RT2_vector_sham_post_visual, 50, 11);
tf=0.5;
rtd_sham_outliers_sham_post_visual=filloutliers(rtd_reshaped_sham_post_visual,NaN,'ThresholdFactor',tf);
mean_columns_sham_post_visual = nanmean(rtd_sham_outliers_sham_post_visual);


% Create a figure with subplots
figure;

% Define positions for boxplots
positions = [1, 2, 4, 5];

% Auditory Condition
subplot(1, 3, 1);
hold on;
boxplot(mean_columns_active_pre_auditory, 'Positions', positions(1), 'Widths', 0.2);
boxplot(mean_columns_sham_pre_auditory, 'Positions', positions(2), 'Widths', 0.2);
boxplot(mean_columns_active_post_auditory, 'Positions', positions(3), 'Widths', 0.2);
boxplot(mean_columns_sham_post_auditory, 'Positions', positions(4), 'Widths', 0.2);
hold off;

% Customize plot
set(gca, 'XTick', positions, 'XTickLabels', {'Active Pre', 'Sham Pre', 'Active Post', 'Sham Post'});
title('Auditory');
xlabel('Condition');
ylabel('Reaction Time (ms)');
ylim([100, 450]); % Set the y-axis limits

% Bimodal Condition
subplot(1, 3, 2);
hold on;
boxplot(mean_columns_active_pre_bimodal, 'Positions', positions(1), 'Widths', 0.2);
boxplot(mean_columns_sham_pre_bimodal, 'Positions', positions(2), 'Widths', 0.2);
boxplot(mean_columns_active_post_bimodal, 'Positions', positions(3), 'Widths', 0.2);
boxplot(mean_columns_sham_post_bimodal, 'Positions', positions(4), 'Widths', 0.2);
hold off;

% Customize plot
set(gca, 'XTick', positions, 'XTickLabels', {'Active Pre', 'Sham Pre', 'Active Post', 'Sham Post'});
title('Bimodal');
xlabel('Condition');
ylabel('Reaction Times (ms)');
ylim([100, 450]); % Set the y-axis limits

% Visual Condition
subplot(1, 3, 3);
hold on;
boxplot(mean_columns_active_pre_visual, 'Positions', positions(1), 'Widths', 0.2);
boxplot(mean_columns_sham_pre_visual, 'Positions', positions(2), 'Widths', 0.2);
boxplot(mean_columns_active_post_visual, 'Positions', positions(3), 'Widths', 0.2);
boxplot(mean_columns_sham_post_visual, 'Positions', positions(4), 'Widths', 0.2);
hold off;

% Customize plot
set(gca, 'XTick', positions, 'XTickLabels', {'Active Pre', 'Sham Pre', 'Active Post', 'Sham Post'});
title('Visual');
xlabel('Condition');
ylabel('Reaction Times (ms)');
ylim([100, 450]); % Set the y-axis limits
