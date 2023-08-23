SELECT DISTINCT
    c.Id,
    i.ActivityDay,
    c.Calories AS DailyCalories,
    i.SedentaryMinutes,
    i.LightlyActiveMinutes,
    i.FairlyActiveMinutes,
    i.VeryActiveMinutes,
    s.StepTotal AS DailySteps
FROM `fitbit.dailyIntensities_merged` i
LEFT JOIN `fitbit.dailyCalories_merged` c ON c.Id = i.Id AND c.ActivityDay = i.ActivityDay
LEFT JOIN `fitbit.dailySteps_merged` s ON i.Id = s.Id AND i.ActivityDay = s.ActivityDay;
  