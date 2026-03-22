.class public final enum Lj$/time/temporal/ChronoUnit;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj$/time/temporal/ChronoUnit;",
        ">;",
        "Lj$/time/temporal/r;"
    }
.end annotation


# static fields
.field public static final enum CENTURIES:Lj$/time/temporal/ChronoUnit;

.field public static final enum DAYS:Lj$/time/temporal/ChronoUnit;

.field public static final enum DECADES:Lj$/time/temporal/ChronoUnit;

.field public static final enum ERAS:Lj$/time/temporal/ChronoUnit;

.field public static final enum FOREVER:Lj$/time/temporal/ChronoUnit;

.field public static final enum HALF_DAYS:Lj$/time/temporal/ChronoUnit;

.field public static final enum HOURS:Lj$/time/temporal/ChronoUnit;

.field public static final enum MICROS:Lj$/time/temporal/ChronoUnit;

.field public static final enum MILLENNIA:Lj$/time/temporal/ChronoUnit;

.field public static final enum MILLIS:Lj$/time/temporal/ChronoUnit;

.field public static final enum MINUTES:Lj$/time/temporal/ChronoUnit;

.field public static final enum MONTHS:Lj$/time/temporal/ChronoUnit;

.field public static final enum NANOS:Lj$/time/temporal/ChronoUnit;

.field public static final enum SECONDS:Lj$/time/temporal/ChronoUnit;

.field public static final enum WEEKS:Lj$/time/temporal/ChronoUnit;

.field public static final enum YEARS:Lj$/time/temporal/ChronoUnit;

.field public static final synthetic c:[Lj$/time/temporal/ChronoUnit;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lj$/time/Duration;


# direct methods
.method static constructor <clinit>()V
    .locals 36

    const/16 v7, 0x8

    const/4 v8, 0x7

    const/4 v9, 0x6

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x3

    .line 83
    new-instance v13, Lj$/time/temporal/ChronoUnit;

    const-wide/16 v14, 0x1

    invoke-static {v14, v15}, Lj$/time/Duration;->i(J)Lj$/time/Duration;

    move-result-object v0

    const-string v1, "NANOS"

    const/4 v2, 0x0

    const-string v3, "Nanos"

    invoke-direct {v13, v1, v2, v3, v0}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v13, Lj$/time/temporal/ChronoUnit;->NANOS:Lj$/time/temporal/ChronoUnit;

    .line 88
    new-instance v0, Lj$/time/temporal/ChronoUnit;

    const-wide/16 v20, 0x3e8

    invoke-static/range {v20 .. v21}, Lj$/time/Duration;->i(J)Lj$/time/Duration;

    move-result-object v1

    const-string v3, "MICROS"

    const/4 v4, 0x1

    const-string v5, "Micros"

    invoke-direct {v0, v3, v4, v5, v1}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v0, Lj$/time/temporal/ChronoUnit;->MICROS:Lj$/time/temporal/ChronoUnit;

    .line 93
    new-instance v1, Lj$/time/temporal/ChronoUnit;

    const-wide/32 v22, 0xf4240

    invoke-static/range {v22 .. v23}, Lj$/time/Duration;->i(J)Lj$/time/Duration;

    move-result-object v3

    const-string v5, "MILLIS"

    move/from16 v22, v4

    const/4 v4, 0x2

    const-string v6, "Millis"

    invoke-direct {v1, v5, v4, v6, v3}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v1, Lj$/time/temporal/ChronoUnit;->MILLIS:Lj$/time/temporal/ChronoUnit;

    .line 99
    new-instance v3, Lj$/time/temporal/ChronoUnit;

    .line 224
    invoke-static {v14, v15, v2}, Lj$/time/Duration;->h(JI)Lj$/time/Duration;

    move-result-object v5

    .line 99
    const-string v6, "SECONDS"

    const-string v14, "Seconds"

    invoke-direct {v3, v6, v12, v14, v5}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v3, Lj$/time/temporal/ChronoUnit;->SECONDS:Lj$/time/temporal/ChronoUnit;

    .line 104
    new-instance v5, Lj$/time/temporal/ChronoUnit;

    const-wide/16 v14, 0x3c

    .line 224
    invoke-static {v14, v15, v2}, Lj$/time/Duration;->h(JI)Lj$/time/Duration;

    move-result-object v6

    .line 104
    const-string v14, "MINUTES"

    const-string v15, "Minutes"

    invoke-direct {v5, v14, v11, v15, v6}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v5, Lj$/time/temporal/ChronoUnit;->MINUTES:Lj$/time/temporal/ChronoUnit;

    .line 109
    new-instance v6, Lj$/time/temporal/ChronoUnit;

    const-wide/16 v14, 0xe10

    .line 224
    invoke-static {v14, v15, v2}, Lj$/time/Duration;->h(JI)Lj$/time/Duration;

    move-result-object v14

    .line 109
    const-string v15, "HOURS"

    move/from16 v24, v4

    const-string v4, "Hours"

    invoke-direct {v6, v15, v10, v4, v14}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v6, Lj$/time/temporal/ChronoUnit;->HOURS:Lj$/time/temporal/ChronoUnit;

    .line 114
    new-instance v4, Lj$/time/temporal/ChronoUnit;

    const-wide/32 v14, 0xa8c0

    .line 224
    invoke-static {v14, v15, v2}, Lj$/time/Duration;->h(JI)Lj$/time/Duration;

    move-result-object v14

    .line 114
    const-string v15, "HALF_DAYS"

    move/from16 v25, v10

    const-string v10, "HalfDays"

    invoke-direct {v4, v15, v9, v10, v14}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v4, Lj$/time/temporal/ChronoUnit;->HALF_DAYS:Lj$/time/temporal/ChronoUnit;

    .line 125
    new-instance v10, Lj$/time/temporal/ChronoUnit;

    const-wide/32 v14, 0x15180

    .line 224
    invoke-static {v14, v15, v2}, Lj$/time/Duration;->h(JI)Lj$/time/Duration;

    move-result-object v14

    .line 125
    const-string v15, "DAYS"

    move/from16 v26, v9

    const-string v9, "Days"

    invoke-direct {v10, v15, v8, v9, v14}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v10, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    .line 132
    new-instance v9, Lj$/time/temporal/ChronoUnit;

    const-wide/32 v14, 0x93a80

    .line 224
    invoke-static {v14, v15, v2}, Lj$/time/Duration;->h(JI)Lj$/time/Duration;

    move-result-object v14

    .line 132
    const-string v15, "WEEKS"

    move/from16 v27, v8

    const-string v8, "Weeks"

    invoke-direct {v9, v15, v7, v8, v14}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v9, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    .line 140
    new-instance v8, Lj$/time/temporal/ChronoUnit;

    const-wide/32 v14, 0x282072

    .line 224
    invoke-static {v14, v15, v2}, Lj$/time/Duration;->h(JI)Lj$/time/Duration;

    move-result-object v14

    .line 140
    const-string v15, "MONTHS"

    move/from16 v28, v7

    const-string v7, "Months"

    move/from16 v29, v11

    const/16 v11, 0x9

    invoke-direct {v8, v15, v11, v7, v14}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v8, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    .line 149
    new-instance v7, Lj$/time/temporal/ChronoUnit;

    const-wide/32 v14, 0x1e18558

    .line 224
    invoke-static {v14, v15, v2}, Lj$/time/Duration;->h(JI)Lj$/time/Duration;

    move-result-object v11

    .line 149
    const-string v14, "YEARS"

    const-string v15, "Years"

    move/from16 v30, v12

    const/16 v12, 0xa

    invoke-direct {v7, v14, v12, v15, v11}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v7, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    .line 157
    new-instance v11, Lj$/time/temporal/ChronoUnit;

    const-wide/32 v14, 0x12cf3570

    .line 224
    invoke-static {v14, v15, v2}, Lj$/time/Duration;->h(JI)Lj$/time/Duration;

    move-result-object v12

    .line 157
    const-string v14, "DECADES"

    const-string v15, "Decades"

    const/16 v2, 0xb

    invoke-direct {v11, v14, v2, v15, v12}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v11, Lj$/time/temporal/ChronoUnit;->DECADES:Lj$/time/temporal/ChronoUnit;

    .line 165
    new-instance v2, Lj$/time/temporal/ChronoUnit;

    const-wide v14, 0xbc181660L

    const/4 v12, 0x0

    .line 224
    invoke-static {v14, v15, v12}, Lj$/time/Duration;->h(JI)Lj$/time/Duration;

    move-result-object v14

    .line 165
    const-string v15, "CENTURIES"

    const-string v12, "Centuries"

    move-object/from16 v32, v0

    const/16 v0, 0xc

    invoke-direct {v2, v15, v0, v12, v14}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v2, Lj$/time/temporal/ChronoUnit;->CENTURIES:Lj$/time/temporal/ChronoUnit;

    .line 173
    new-instance v0, Lj$/time/temporal/ChronoUnit;

    const-wide v14, 0x758f0dfc0L

    const/4 v12, 0x0

    .line 224
    invoke-static {v14, v15, v12}, Lj$/time/Duration;->h(JI)Lj$/time/Duration;

    move-result-object v14

    .line 173
    const-string v15, "MILLENNIA"

    const-string v12, "Millennia"

    move-object/from16 v33, v1

    const/16 v1, 0xd

    invoke-direct {v0, v15, v1, v12, v14}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v0, Lj$/time/temporal/ChronoUnit;->MILLENNIA:Lj$/time/temporal/ChronoUnit;

    .line 182
    new-instance v1, Lj$/time/temporal/ChronoUnit;

    const-wide v14, 0x701ce172277000L

    const/4 v12, 0x0

    .line 224
    invoke-static {v14, v15, v12}, Lj$/time/Duration;->h(JI)Lj$/time/Duration;

    move-result-object v14

    .line 182
    const-string v12, "ERAS"

    const-string v15, "Eras"

    move-object/from16 v34, v0

    const/16 v0, 0xe

    invoke-direct {v1, v12, v0, v15, v14}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v1, Lj$/time/temporal/ChronoUnit;->ERAS:Lj$/time/temporal/ChronoUnit;

    .line 190
    new-instance v0, Lj$/time/temporal/ChronoUnit;

    const-wide v14, 0x7fffffffffffffffL

    move-object/from16 v35, v1

    move-object v12, v2

    const-wide/32 v1, 0x3b9ac9ff

    invoke-static {v14, v15, v1, v2}, Lj$/time/Duration;->ofSeconds(JJ)Lj$/time/Duration;

    move-result-object v1

    const-string v2, "FOREVER"

    const-string v14, "Forever"

    const/16 v15, 0xf

    invoke-direct {v0, v2, v15, v14, v1}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v0, Lj$/time/temporal/ChronoUnit;->FOREVER:Lj$/time/temporal/ChronoUnit;

    const/16 v1, 0x10

    .line 77
    new-array v1, v1, [Lj$/time/temporal/ChronoUnit;

    const/16 v31, 0x0

    aput-object v13, v1, v31

    aput-object v32, v1, v22

    aput-object v33, v1, v24

    aput-object v3, v1, v30

    aput-object v5, v1, v29

    aput-object v6, v1, v25

    aput-object v4, v1, v26

    aput-object v10, v1, v27

    aput-object v9, v1, v28

    const/16 v23, 0x9

    aput-object v8, v1, v23

    const/16 v21, 0xa

    aput-object v7, v1, v21

    const/16 v20, 0xb

    aput-object v11, v1, v20

    const/16 v19, 0xc

    aput-object v12, v1, v19

    const/16 v18, 0xd

    aput-object v34, v1, v18

    const/16 v17, 0xe

    aput-object v35, v1, v17

    const/16 v16, 0xf

    aput-object v0, v1, v16

    sput-object v1, Lj$/time/temporal/ChronoUnit;->c:[Lj$/time/temporal/ChronoUnit;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V
    .locals 0

    .line 195
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 196
    iput-object p3, p0, Lj$/time/temporal/ChronoUnit;->a:Ljava/lang/String;

    .line 197
    iput-object p4, p0, Lj$/time/temporal/ChronoUnit;->b:Lj$/time/Duration;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/temporal/ChronoUnit;
    .locals 1

    .line 77
    const-class v0, Lj$/time/temporal/ChronoUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/time/temporal/ChronoUnit;

    return-object p0
.end method

.method public static values()[Lj$/time/temporal/ChronoUnit;
    .locals 1

    .line 77
    sget-object v0, Lj$/time/temporal/ChronoUnit;->c:[Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v0}, [Lj$/time/temporal/ChronoUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/temporal/ChronoUnit;

    return-object v0
.end method


# virtual methods
.method public getDuration()Lj$/time/Duration;
    .locals 1

    .line 211
    iget-object v0, p0, Lj$/time/temporal/ChronoUnit;->b:Lj$/time/Duration;

    return-object v0
.end method

.method public final h(Lj$/time/temporal/l;J)Lj$/time/temporal/l;
    .locals 0

    .line 266
    invoke-interface {p1, p2, p3, p0}, Lj$/time/temporal/l;->d(JLj$/time/temporal/r;)Lj$/time/temporal/l;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Lj$/time/temporal/ChronoUnit;->a:Ljava/lang/String;

    return-object v0
.end method
