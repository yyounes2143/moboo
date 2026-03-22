.class public final enum Lj$/time/temporal/a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/p;


# static fields
.field public static final enum ALIGNED_DAY_OF_WEEK_IN_MONTH:Lj$/time/temporal/a;

.field public static final enum ALIGNED_DAY_OF_WEEK_IN_YEAR:Lj$/time/temporal/a;

.field public static final enum ALIGNED_WEEK_OF_MONTH:Lj$/time/temporal/a;

.field public static final enum ALIGNED_WEEK_OF_YEAR:Lj$/time/temporal/a;

.field public static final enum AMPM_OF_DAY:Lj$/time/temporal/a;

.field public static final enum CLOCK_HOUR_OF_AMPM:Lj$/time/temporal/a;

.field public static final enum CLOCK_HOUR_OF_DAY:Lj$/time/temporal/a;

.field public static final enum DAY_OF_MONTH:Lj$/time/temporal/a;

.field public static final enum DAY_OF_WEEK:Lj$/time/temporal/a;

.field public static final enum DAY_OF_YEAR:Lj$/time/temporal/a;

.field public static final enum EPOCH_DAY:Lj$/time/temporal/a;

.field public static final enum ERA:Lj$/time/temporal/a;

.field public static final enum HOUR_OF_AMPM:Lj$/time/temporal/a;

.field public static final enum HOUR_OF_DAY:Lj$/time/temporal/a;

.field public static final enum INSTANT_SECONDS:Lj$/time/temporal/a;

.field public static final enum MICRO_OF_DAY:Lj$/time/temporal/a;

.field public static final enum MICRO_OF_SECOND:Lj$/time/temporal/a;

.field public static final enum MILLI_OF_DAY:Lj$/time/temporal/a;

.field public static final enum MILLI_OF_SECOND:Lj$/time/temporal/a;

.field public static final enum MINUTE_OF_DAY:Lj$/time/temporal/a;

.field public static final enum MINUTE_OF_HOUR:Lj$/time/temporal/a;

.field public static final enum MONTH_OF_YEAR:Lj$/time/temporal/a;

.field public static final enum NANO_OF_DAY:Lj$/time/temporal/a;

.field public static final enum NANO_OF_SECOND:Lj$/time/temporal/a;

.field public static final enum OFFSET_SECONDS:Lj$/time/temporal/a;

.field public static final enum PROLEPTIC_MONTH:Lj$/time/temporal/a;

.field public static final enum SECOND_OF_DAY:Lj$/time/temporal/a;

.field public static final enum SECOND_OF_MINUTE:Lj$/time/temporal/a;

.field public static final enum YEAR:Lj$/time/temporal/a;

.field public static final enum YEAR_OF_ERA:Lj$/time/temporal/a;

.field public static final synthetic c:[Lj$/time/temporal/a;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lj$/time/temporal/t;


# direct methods
.method static constructor <clinit>()V
    .locals 64

    .line 120
    new-instance v8, Lj$/time/temporal/a;

    sget-object v9, Lj$/time/temporal/ChronoUnit;->NANOS:Lj$/time/temporal/ChronoUnit;

    const-wide/16 v9, 0x0

    const-wide/32 v11, 0x3b9ac9ff

    invoke-static {v9, v10, v11, v12}, Lj$/time/temporal/t;->e(JJ)Lj$/time/temporal/t;

    move-result-object v13

    const/4 v14, 0x0

    const-string v15, "NanoOfSecond"

    const-string v0, "NANO_OF_SECOND"

    invoke-direct {v8, v0, v14, v15, v13}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/t;)V

    sput-object v8, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    .line 136
    new-instance v0, Lj$/time/temporal/a;

    move v13, v14

    const-wide v14, 0x4e94914effffL

    invoke-static {v9, v10, v14, v15}, Lj$/time/temporal/t;->e(JJ)Lj$/time/temporal/t;

    move-result-object v14

    const/4 v15, 0x1

    move/from16 v17, v13

    const-string v13, "NanoOfDay"

    const-string v1, "NANO_OF_DAY"

    invoke-direct {v0, v1, v15, v13, v14}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/t;)V

    sput-object v0, Lj$/time/temporal/a;->NANO_OF_DAY:Lj$/time/temporal/a;

    .line 156
    new-instance v1, Lj$/time/temporal/a;

    const-wide/32 v13, 0xf423f

    invoke-static {v9, v10, v13, v14}, Lj$/time/temporal/t;->e(JJ)Lj$/time/temporal/t;

    move-result-object v13

    const/4 v14, 0x2

    move/from16 v19, v15

    const-string v15, "MicroOfSecond"

    const-string v11, "MICRO_OF_SECOND"

    invoke-direct {v1, v11, v14, v15, v13}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/t;)V

    sput-object v1, Lj$/time/temporal/a;->MICRO_OF_SECOND:Lj$/time/temporal/a;

    .line 175
    new-instance v11, Lj$/time/temporal/a;

    const-wide v12, 0x141dd75fffL

    invoke-static {v9, v10, v12, v13}, Lj$/time/temporal/t;->e(JJ)Lj$/time/temporal/t;

    move-result-object v12

    const/4 v13, 0x3

    const-string v15, "MicroOfDay"

    move/from16 v22, v14

    const-string v14, "MICRO_OF_DAY"

    invoke-direct {v11, v14, v13, v15, v12}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/t;)V

    sput-object v11, Lj$/time/temporal/a;->MICRO_OF_DAY:Lj$/time/temporal/a;

    .line 195
    new-instance v12, Lj$/time/temporal/a;

    const-wide/16 v14, 0x3e7

    invoke-static {v9, v10, v14, v15}, Lj$/time/temporal/t;->e(JJ)Lj$/time/temporal/t;

    move-result-object v14

    const/4 v15, 0x4

    move/from16 v23, v13

    const-string v13, "MilliOfSecond"

    const-string v2, "MILLI_OF_SECOND"

    invoke-direct {v12, v2, v15, v13, v14}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/t;)V

    sput-object v12, Lj$/time/temporal/a;->MILLI_OF_SECOND:Lj$/time/temporal/a;

    .line 214
    new-instance v2, Lj$/time/temporal/a;

    const-wide/32 v13, 0x5265bff

    invoke-static {v9, v10, v13, v14}, Lj$/time/temporal/t;->e(JJ)Lj$/time/temporal/t;

    move-result-object v13

    const/4 v14, 0x5

    move/from16 v25, v15

    const-string v15, "MilliOfDay"

    const-string v3, "MILLI_OF_DAY"

    invoke-direct {v2, v3, v14, v15, v13}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/t;)V

    sput-object v2, Lj$/time/temporal/a;->MILLI_OF_DAY:Lj$/time/temporal/a;

    .line 224
    new-instance v27, Lj$/time/temporal/a;

    move v3, v14

    const-wide/16 v14, 0x3b

    invoke-static {v9, v10, v14, v15}, Lj$/time/temporal/t;->e(JJ)Lj$/time/temporal/t;

    move-result-object v31

    const-string v30, "SecondOfMinute"

    const/16 v32, 0x0

    const-string v28, "SECOND_OF_MINUTE"

    const/16 v29, 0x6

    invoke-direct/range {v27 .. v32}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/t;I)V

    sput-object v27, Lj$/time/temporal/a;->SECOND_OF_MINUTE:Lj$/time/temporal/a;

    .line 236
    new-instance v13, Lj$/time/temporal/a;

    move/from16 v29, v3

    const-wide/32 v3, 0x1517f

    invoke-static {v9, v10, v3, v4}, Lj$/time/temporal/t;->e(JJ)Lj$/time/temporal/t;

    move-result-object v3

    const/4 v4, 0x7

    const-string v5, "SecondOfDay"

    const-string v6, "SECOND_OF_DAY"

    invoke-direct {v13, v6, v4, v5, v3}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/t;)V

    sput-object v13, Lj$/time/temporal/a;->SECOND_OF_DAY:Lj$/time/temporal/a;

    .line 246
    new-instance v32, Lj$/time/temporal/a;

    invoke-static {v9, v10, v14, v15}, Lj$/time/temporal/t;->e(JJ)Lj$/time/temporal/t;

    move-result-object v36

    const-string v35, "MinuteOfHour"

    const/16 v37, 0x0

    const-string v33, "MINUTE_OF_HOUR"

    const/16 v34, 0x8

    invoke-direct/range {v32 .. v37}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/t;I)V

    sput-object v32, Lj$/time/temporal/a;->MINUTE_OF_HOUR:Lj$/time/temporal/a;

    .line 257
    new-instance v3, Lj$/time/temporal/a;

    const-wide/16 v5, 0x59f

    invoke-static {v9, v10, v5, v6}, Lj$/time/temporal/t;->e(JJ)Lj$/time/temporal/t;

    move-result-object v5

    const/16 v6, 0x9

    const-string v14, "MinuteOfDay"

    const-string v15, "MINUTE_OF_DAY"

    invoke-direct {v3, v15, v6, v14, v5}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/t;)V

    sput-object v3, Lj$/time/temporal/a;->MINUTE_OF_DAY:Lj$/time/temporal/a;

    .line 273
    new-instance v5, Lj$/time/temporal/a;

    const-wide/16 v14, 0xb

    invoke-static {v9, v10, v14, v15}, Lj$/time/temporal/t;->e(JJ)Lj$/time/temporal/t;

    move-result-object v14

    const/16 v15, 0xa

    move/from16 v33, v4

    const-string v4, "HourOfAmPm"

    move/from16 v34, v6

    const-string v6, "HOUR_OF_AMPM"

    invoke-direct {v5, v6, v15, v4, v14}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/t;)V

    sput-object v5, Lj$/time/temporal/a;->HOUR_OF_AMPM:Lj$/time/temporal/a;

    .line 289
    new-instance v4, Lj$/time/temporal/a;

    move-object v14, v8

    const-wide/16 v7, 0x1

    const-wide/16 v9, 0xc

    invoke-static {v7, v8, v9, v10}, Lj$/time/temporal/t;->e(JJ)Lj$/time/temporal/t;

    move-result-object v6

    move/from16 v38, v15

    const/16 v15, 0xb

    const-string v9, "ClockHourOfAmPm"

    const-string v10, "CLOCK_HOUR_OF_AMPM"

    invoke-direct {v4, v10, v15, v9, v6}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/t;)V

    sput-object v4, Lj$/time/temporal/a;->CLOCK_HOUR_OF_AMPM:Lj$/time/temporal/a;

    .line 306
    new-instance v41, Lj$/time/temporal/a;

    const-wide/16 v9, 0x17

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v9, v10}, Lj$/time/temporal/t;->e(JJ)Lj$/time/temporal/t;

    move-result-object v45

    const-string v44, "HourOfDay"

    const/16 v46, 0x0

    const-string v42, "HOUR_OF_DAY"

    const/16 v43, 0xc

    invoke-direct/range {v41 .. v46}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/t;I)V

    sput-object v41, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    .line 322
    new-instance v7, Lj$/time/temporal/a;

    const-wide/16 v8, 0x18

    move-object v10, v0

    move-object/from16 v42, v1

    const-wide/16 v0, 0x1

    invoke-static {v0, v1, v8, v9}, Lj$/time/temporal/t;->e(JJ)Lj$/time/temporal/t;

    move-result-object v6

    const/16 v8, 0xd

    const-string v9, "ClockHourOfDay"

    move/from16 v43, v15

    const-string v15, "CLOCK_HOUR_OF_DAY"

    invoke-direct {v7, v15, v8, v9, v6}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/t;)V

    sput-object v7, Lj$/time/temporal/a;->CLOCK_HOUR_OF_DAY:Lj$/time/temporal/a;

    .line 335
    new-instance v44, Lj$/time/temporal/a;

    move v15, v8

    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v0, v1}, Lj$/time/temporal/t;->e(JJ)Lj$/time/temporal/t;

    move-result-object v48

    const-string v47, "AmPmOfDay"

    const/16 v49, 0x0

    const-string v45, "AMPM_OF_DAY"

    const/16 v46, 0xe

    invoke-direct/range {v44 .. v49}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/t;I)V

    sput-object v44, Lj$/time/temporal/a;->AMPM_OF_DAY:Lj$/time/temporal/a;

    .line 351
    new-instance v45, Lj$/time/temporal/a;

    const-wide/16 v8, 0x7

    invoke-static {v0, v1, v8, v9}, Lj$/time/temporal/t;->e(JJ)Lj$/time/temporal/t;

    move-result-object v49

    const-string v48, "DayOfWeek"

    const/16 v50, 0x0

    const-string v46, "DAY_OF_WEEK"

    const/16 v47, 0xf

    invoke-direct/range {v45 .. v50}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/t;I)V

    sput-object v45, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    .line 369
    new-instance v6, Lj$/time/temporal/a;

    move/from16 v46, v15

    invoke-static {v0, v1, v8, v9}, Lj$/time/temporal/t;->e(JJ)Lj$/time/temporal/t;

    move-result-object v15

    const/16 v0, 0x10

    const-string v1, "AlignedDayOfWeekInMonth"

    const-string v8, "ALIGNED_DAY_OF_WEEK_IN_MONTH"

    invoke-direct {v6, v8, v0, v1, v15}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/t;)V

    sput-object v6, Lj$/time/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lj$/time/temporal/a;

    .line 387
    new-instance v1, Lj$/time/temporal/a;

    move v15, v0

    move-object/from16 v49, v1

    const-wide/16 v0, 0x7

    const-wide/16 v8, 0x1

    invoke-static {v8, v9, v0, v1}, Lj$/time/temporal/t;->e(JJ)Lj$/time/temporal/t;

    move-result-object v0

    const/16 v1, 0x11

    const-string v8, "AlignedDayOfWeekInYear"

    const-string v9, "ALIGNED_DAY_OF_WEEK_IN_YEAR"

    move/from16 v50, v15

    move-object/from16 v15, v49

    invoke-direct {v15, v9, v1, v8, v0}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/t;)V

    sput-object v15, Lj$/time/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lj$/time/temporal/a;

    .line 400
    new-instance v51, Lj$/time/temporal/a;

    const-wide/16 v54, 0x1c

    const-wide/16 v56, 0x1f

    const-wide/16 v52, 0x1

    .line 147
    invoke-static/range {v52 .. v57}, Lj$/time/temporal/t;->f(JJJ)Lj$/time/temporal/t;

    move-result-object v55

    .line 400
    const-string v54, "DayOfMonth"

    const/16 v56, 0x0

    const-string v52, "DAY_OF_MONTH"

    const/16 v53, 0x12

    invoke-direct/range {v51 .. v56}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/t;I)V

    sput-object v51, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    .line 418
    new-instance v0, Lj$/time/temporal/a;

    const-wide/16 v54, 0x16d

    const-wide/16 v56, 0x16e

    const-wide/16 v52, 0x1

    .line 147
    invoke-static/range {v52 .. v57}, Lj$/time/temporal/t;->f(JJJ)Lj$/time/temporal/t;

    move-result-object v8

    .line 418
    const-string v9, "DayOfYear"

    move/from16 v49, v1

    const-string v1, "DAY_OF_YEAR"

    move-object/from16 v52, v2

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2, v9, v8}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/t;)V

    move-object v1, v6

    sput-object v0, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    .line 431
    new-instance v2, Lj$/time/temporal/a;

    const-wide v8, -0x550a313cdaL

    move-object/from16 v37, v7

    const-wide v6, 0x550a1b48f7L

    invoke-static {v8, v9, v6, v7}, Lj$/time/temporal/t;->e(JJ)Lj$/time/temporal/t;

    move-result-object v6

    const-string v7, "EpochDay"

    const-string v8, "EPOCH_DAY"

    const/16 v9, 0x14

    invoke-direct {v2, v8, v9, v7, v6}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/t;)V

    sput-object v2, Lj$/time/temporal/a;->EPOCH_DAY:Lj$/time/temporal/a;

    .line 447
    new-instance v6, Lj$/time/temporal/a;

    const-wide/16 v56, 0x4

    const-wide/16 v58, 0x5

    const-wide/16 v54, 0x1

    .line 147
    invoke-static/range {v54 .. v59}, Lj$/time/temporal/t;->f(JJJ)Lj$/time/temporal/t;

    move-result-object v7

    .line 447
    const-string v8, "AlignedWeekOfMonth"

    const-string v9, "ALIGNED_WEEK_OF_MONTH"

    move-object/from16 v54, v0

    const/16 v0, 0x15

    invoke-direct {v6, v9, v0, v8, v7}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/t;)V

    sput-object v6, Lj$/time/temporal/a;->ALIGNED_WEEK_OF_MONTH:Lj$/time/temporal/a;

    .line 463
    new-instance v0, Lj$/time/temporal/a;

    const-wide/16 v7, 0x35

    move-object v9, v1

    move-object/from16 v55, v2

    const-wide/16 v1, 0x1

    invoke-static {v1, v2, v7, v8}, Lj$/time/temporal/t;->e(JJ)Lj$/time/temporal/t;

    move-result-object v7

    const-string v8, "AlignedWeekOfYear"

    const-string v1, "ALIGNED_WEEK_OF_YEAR"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2, v8, v7}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/t;)V

    sput-object v0, Lj$/time/temporal/a;->ALIGNED_WEEK_OF_YEAR:Lj$/time/temporal/a;

    .line 474
    new-instance v56, Lj$/time/temporal/a;

    const-wide/16 v1, 0x1

    const-wide/16 v7, 0xc

    invoke-static {v1, v2, v7, v8}, Lj$/time/temporal/t;->e(JJ)Lj$/time/temporal/t;

    move-result-object v60

    const-string v59, "MonthOfYear"

    const/16 v61, 0x0

    const-string v57, "MONTH_OF_YEAR"

    const/16 v58, 0x17

    invoke-direct/range {v56 .. v61}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/t;I)V

    sput-object v56, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    .line 494
    new-instance v1, Lj$/time/temporal/a;

    const-wide v7, -0x2cb4177f4L

    move-object/from16 v39, v3

    const-wide v2, 0x2cb4177ffL

    invoke-static {v7, v8, v2, v3}, Lj$/time/temporal/t;->e(JJ)Lj$/time/temporal/t;

    move-result-object v2

    const-string v3, "ProlepticMonth"

    const-string v7, "PROLEPTIC_MONTH"

    const/16 v8, 0x18

    invoke-direct {v1, v7, v8, v3, v2}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/t;)V

    sput-object v1, Lj$/time/temporal/a;->PROLEPTIC_MONTH:Lj$/time/temporal/a;

    .line 529
    new-instance v2, Lj$/time/temporal/a;

    const-wide/32 v59, 0x3b9ac9ff

    const-wide/32 v61, 0x3b9aca00

    const-wide/16 v57, 0x1

    .line 147
    invoke-static/range {v57 .. v62}, Lj$/time/temporal/t;->f(JJJ)Lj$/time/temporal/t;

    move-result-object v3

    .line 529
    const-string v7, "YearOfEra"

    const-string v8, "YEAR_OF_ERA"

    move-object/from16 v40, v0

    const/16 v0, 0x19

    invoke-direct {v2, v8, v0, v7, v3}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/t;)V

    sput-object v2, Lj$/time/temporal/a;->YEAR_OF_ERA:Lj$/time/temporal/a;

    .line 553
    new-instance v57, Lj$/time/temporal/a;

    const-wide/32 v7, -0x3b9ac9ff

    move-object v3, v1

    const-wide/32 v0, 0x3b9ac9ff

    invoke-static {v7, v8, v0, v1}, Lj$/time/temporal/t;->e(JJ)Lj$/time/temporal/t;

    move-result-object v61

    const-string v60, "Year"

    const/16 v62, 0x0

    const-string v58, "YEAR"

    const/16 v59, 0x1a

    invoke-direct/range {v57 .. v62}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/t;I)V

    sput-object v57, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    .line 570
    new-instance v58, Lj$/time/temporal/a;

    const-wide/16 v0, 0x1

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v0, v1}, Lj$/time/temporal/t;->e(JJ)Lj$/time/temporal/t;

    move-result-object v62

    const-string v61, "Era"

    const/16 v63, 0x0

    const-string v59, "ERA"

    const/16 v60, 0x1b

    invoke-direct/range {v58 .. v63}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/t;I)V

    sput-object v58, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    .line 585
    new-instance v0, Lj$/time/temporal/a;

    const-wide/high16 v7, -0x8000000000000000L

    move-object/from16 v20, v2

    const-wide v1, 0x7fffffffffffffffL

    invoke-static {v7, v8, v1, v2}, Lj$/time/temporal/t;->e(JJ)Lj$/time/temporal/t;

    move-result-object v1

    const-string v2, "InstantSeconds"

    const-string v7, "INSTANT_SECONDS"

    const/16 v8, 0x1c

    invoke-direct {v0, v7, v8, v2, v1}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/t;)V

    sput-object v0, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    .line 599
    new-instance v1, Lj$/time/temporal/a;

    const-wide/32 v7, -0xfd20

    move-object/from16 v21, v3

    const-wide/32 v2, 0xfd20

    invoke-static {v7, v8, v2, v3}, Lj$/time/temporal/t;->e(JJ)Lj$/time/temporal/t;

    move-result-object v2

    const-string v3, "OffsetSeconds"

    const-string v7, "OFFSET_SECONDS"

    const/16 v8, 0x1d

    invoke-direct {v1, v7, v8, v3, v2}, Lj$/time/temporal/a;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/t;)V

    sput-object v1, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    const/16 v2, 0x1e

    .line 98
    new-array v2, v2, [Lj$/time/temporal/a;

    aput-object v14, v2, v17

    aput-object v10, v2, v19

    aput-object v42, v2, v22

    aput-object v11, v2, v23

    aput-object v12, v2, v25

    aput-object v52, v2, v29

    const/4 v3, 0x6

    aput-object v27, v2, v3

    aput-object v13, v2, v33

    const/16 v3, 0x8

    aput-object v32, v2, v3

    aput-object v39, v2, v34

    aput-object v5, v2, v38

    aput-object v4, v2, v43

    const/16 v3, 0xc

    aput-object v41, v2, v3

    aput-object v37, v2, v46

    const/16 v3, 0xe

    aput-object v44, v2, v3

    const/16 v3, 0xf

    aput-object v45, v2, v3

    aput-object v9, v2, v50

    aput-object v15, v2, v49

    const/16 v3, 0x12

    aput-object v51, v2, v3

    const/16 v37, 0x13

    aput-object v54, v2, v37

    const/16 v31, 0x14

    aput-object v55, v2, v31

    const/16 v30, 0x15

    aput-object v6, v2, v30

    const/16 v28, 0x16

    aput-object v40, v2, v28

    const/16 v3, 0x17

    aput-object v56, v2, v3

    const/16 v26, 0x18

    aput-object v21, v2, v26

    const/16 v24, 0x19

    aput-object v20, v2, v24

    const/16 v3, 0x1a

    aput-object v57, v2, v3

    const/16 v3, 0x1b

    aput-object v58, v2, v3

    const/16 v18, 0x1c

    aput-object v0, v2, v18

    const/16 v16, 0x1d

    aput-object v1, v2, v16

    sput-object v2, Lj$/time/temporal/a;->c:[Lj$/time/temporal/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/t;)V
    .locals 0

    .line 607
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 608
    iput-object p3, p0, Lj$/time/temporal/a;->a:Ljava/lang/String;

    .line 611
    iput-object p4, p0, Lj$/time/temporal/a;->b:Lj$/time/temporal/t;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/temporal/t;I)V
    .locals 0

    .line 616
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 617
    iput-object p3, p0, Lj$/time/temporal/a;->a:Ljava/lang/String;

    .line 620
    iput-object p4, p0, Lj$/time/temporal/a;->b:Lj$/time/temporal/t;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/temporal/a;
    .locals 1

    .line 98
    const-class v0, Lj$/time/temporal/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/time/temporal/a;

    return-object p0
.end method

.method public static values()[Lj$/time/temporal/a;
    .locals 1

    .line 98
    sget-object v0, Lj$/time/temporal/a;->c:[Lj$/time/temporal/a;

    invoke-virtual {v0}, [Lj$/time/temporal/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/temporal/a;

    return-object v0
.end method


# virtual methods
.method public final F()Z
    .locals 2

    .line 694
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final h()Lj$/time/temporal/t;
    .locals 1

    .line 669
    iget-object v0, p0, Lj$/time/temporal/a;->b:Lj$/time/temporal/t;

    return-object v0
.end method

.method public final i(Lj$/time/temporal/m;)J
    .locals 2

    .line 748
    invoke-interface {p1, p0}, Lj$/time/temporal/m;->r(Lj$/time/temporal/p;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final k(Lj$/time/temporal/m;)Z
    .locals 0

    .line 738
    invoke-interface {p1, p0}, Lj$/time/temporal/m;->e(Lj$/time/temporal/p;)Z

    move-result p1

    return p1
.end method

.method public final l(Lj$/time/temporal/l;J)Lj$/time/temporal/l;
    .locals 0

    .line 754
    invoke-interface {p1, p2, p3, p0}, Lj$/time/temporal/l;->c(JLj$/time/temporal/p;)Lj$/time/temporal/l;

    move-result-object p1

    return-object p1
.end method

.method public final n(Lj$/time/temporal/m;)Lj$/time/temporal/t;
    .locals 0

    .line 743
    invoke-interface {p1, p0}, Lj$/time/temporal/m;->l(Lj$/time/temporal/p;)Lj$/time/temporal/t;

    move-result-object p1

    return-object p1
.end method

.method public final r()Z
    .locals 2

    .line 682
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 760
    iget-object v0, p0, Lj$/time/temporal/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final u(J)V
    .locals 1

    .line 713
    iget-object v0, p0, Lj$/time/temporal/a;->b:Lj$/time/temporal/t;

    invoke-virtual {v0, p1, p2, p0}, Lj$/time/temporal/t;->b(JLj$/time/temporal/p;)V

    return-void
.end method
