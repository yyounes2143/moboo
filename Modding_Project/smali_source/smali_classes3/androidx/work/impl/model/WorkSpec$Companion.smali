.class public final Landroidx/work/impl/model/WorkSpec$Companion;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/model/WorkSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J^\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u00082\u0006\u0010\u001c\u001a\u00020\u0008R\u0013\u0010\u0004\u001a\u00070\u0005\u00a2\u0006\u0002\u0008\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000R(\u0010\t\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u000b0\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Landroidx/work/impl/model/WorkSpec$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "Lorg/jspecify/annotations/NonNull;",
        "SCHEDULE_NOT_REQUESTED_YET",
        "",
        "WORK_INFO_MAPPER",
        "Landroidx/arch/core/util/Function;",
        "",
        "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
        "Landroidx/work/WorkInfo;",
        "calculateNextRunTime",
        "isBackedOff",
        "",
        "runAttemptCount",
        "",
        "backoffPolicy",
        "Landroidx/work/BackoffPolicy;",
        "backoffDelayDuration",
        "lastEnqueueTime",
        "periodCount",
        "isPeriodic",
        "initialDelay",
        "flexDuration",
        "intervalDuration",
        "nextScheduleTimeOverride",
        "work-runtime_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/work/impl/model/WorkSpec$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final calculateNextRunTime(ZILandroidx/work/BackoffPolicy;JJIZJJJJ)J
    .locals 5
    .param p3    # Landroidx/work/BackoffPolicy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-wide/from16 v0, p16

    .line 2
    .line 3
    const-wide v2, 0x7fffffffffffffffL

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v4, v0, v2

    .line 9
    .line 10
    if-eqz v4, :cond_1

    .line 11
    .line 12
    if-eqz p9, :cond_1

    .line 13
    .line 14
    if-nez p8, :cond_0

    .line 15
    .line 16
    return-wide v0

    .line 17
    :cond_0
    const-wide/32 p1, 0xdbba0

    .line 18
    .line 19
    .line 20
    add-long/2addr p6, p1

    .line 21
    invoke-static {v0, v1, p6, p7}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    .line 22
    .line 23
    .line 24
    move-result-wide p1

    .line 25
    return-wide p1

    .line 26
    :cond_1
    if-eqz p1, :cond_3

    .line 27
    .line 28
    sget-object p1, Landroidx/work/BackoffPolicy;->LINEAR:Landroidx/work/BackoffPolicy;

    .line 29
    .line 30
    if-ne p3, p1, :cond_2

    .line 31
    .line 32
    int-to-long p1, p2

    .line 33
    mul-long/2addr p4, p1

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    long-to-float p1, p4

    .line 36
    add-int/lit8 p2, p2, -0x1

    .line 37
    .line 38
    invoke-static {p1, p2}, Ljava/lang/Math;->scalb(FI)F

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    float-to-long p4, p1

    .line 43
    :goto_0
    const-wide/32 p1, 0x112a880

    .line 44
    .line 45
    .line 46
    invoke-static {p4, p5, p1, p2}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    .line 47
    .line 48
    .line 49
    move-result-wide p1

    .line 50
    :goto_1
    add-long/2addr p6, p1

    .line 51
    return-wide p6

    .line 52
    :cond_3
    if-eqz p9, :cond_6

    .line 53
    .line 54
    if-nez p8, :cond_4

    .line 55
    .line 56
    add-long/2addr p6, p10

    .line 57
    goto :goto_2

    .line 58
    :cond_4
    add-long p6, p6, p14

    .line 59
    .line 60
    :goto_2
    cmp-long p1, p12, p14

    .line 61
    .line 62
    if-eqz p1, :cond_5

    .line 63
    .line 64
    if-nez p8, :cond_5

    .line 65
    .line 66
    sub-long p1, p14, p12

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_5
    return-wide p6

    .line 70
    :cond_6
    const-wide/16 p1, -0x1

    .line 71
    .line 72
    cmp-long p1, p6, p1

    .line 73
    .line 74
    if-nez p1, :cond_7

    .line 75
    .line 76
    return-wide v2

    .line 77
    :cond_7
    add-long/2addr p6, p10

    .line 78
    return-wide p6
.end method
