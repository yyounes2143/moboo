.class public final Lcom/changdu/mobovideo/localpush/LocalPushPlanner;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J7\u0010\r\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ%\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J%\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0016\u001a\u00020\u00018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0015\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/changdu/mobovideo/localpush/LocalPushPlanner;",
        "",
        "<init>",
        "()V",
        "Lcom/changdu/mobovideo/localpush/LocalPushType;",
        "type",
        "",
        "candidateAtMs",
        "nowMs",
        "Lcom/changdu/mobovideo/localpush/LocalPushConfig;",
        "config",
        "j$/time/ZoneId",
        "zoneId",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lcom/changdu/mobovideo/localpush/LocalPushType;JJLcom/changdu/mobovideo/localpush/LocalPushConfig;Lj$/time/ZoneId;)Ljava/lang/Long;",
        "unlockAtMs",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(JLcom/changdu/mobovideo/localpush/LocalPushConfig;Lj$/time/ZoneId;)Z",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(JLcom/changdu/mobovideo/localpush/LocalPushConfig;Lj$/time/ZoneId;)J",
        "Ljava/lang/Object;",
        "reserveLock",
        "app_outsideRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushPlanner;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/changdu/mobovideo/localpush/LocalPushPlanner;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/changdu/mobovideo/localpush/LocalPushPlanner;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/changdu/mobovideo/localpush/LocalPushPlanner;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushPlanner;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/changdu/mobovideo/localpush/LocalPushPlanner;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JLcom/changdu/mobovideo/localpush/LocalPushConfig;Lj$/time/ZoneId;)Z
    .locals 13
    .param p3    # Lcom/changdu/mobovideo/localpush/LocalPushConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lj$/time/ZoneId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual/range {p3 .. p3}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 8
    .line 9
    .line 10
    move-result-wide v11

    .line 11
    invoke-virtual/range {p0 .. p4}, Lcom/changdu/mobovideo/localpush/LocalPushPlanner;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JLcom/changdu/mobovideo/localpush/LocalPushConfig;Lj$/time/ZoneId;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    sget-object v0, Lcom/changdu/mobovideo/localpush/LocalPushTime;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushTime;

    .line 16
    .line 17
    sget-object v5, Lcom/changdu/mobovideo/localpush/LocalPushType;->PROMOTION:Lcom/changdu/mobovideo/localpush/LocalPushType;

    .line 18
    .line 19
    move-object/from16 v3, p3

    .line 20
    .line 21
    move-object/from16 v4, p4

    .line 22
    .line 23
    invoke-virtual/range {v0 .. v5}, Lcom/changdu/mobovideo/localpush/LocalPushTime;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JLcom/changdu/mobovideo/localpush/LocalPushConfig;Lj$/time/ZoneId;Lcom/changdu/mobovideo/localpush/LocalPushType;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    return p1

    .line 31
    :cond_0
    sget-object p1, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushStateStore;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwwwwwwwwwwwwwwwwww()J

    .line 34
    .line 35
    .line 36
    move-result-wide v7

    .line 37
    invoke-virtual {p1}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwwwwwwwwwwww()J

    .line 38
    .line 39
    .line 40
    move-result-wide v9

    .line 41
    sget-object v4, Lcom/changdu/mobovideo/localpush/LocalPushMath;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushMath;

    .line 42
    .line 43
    move-wide v5, v1

    .line 44
    invoke-virtual/range {v4 .. v12}, Lcom/changdu/mobovideo/localpush/LocalPushMath;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JJJJ)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    return p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushType;JJLcom/changdu/mobovideo/localpush/LocalPushConfig;Lj$/time/ZoneId;)Ljava/lang/Long;
    .locals 20
    .param p1    # Lcom/changdu/mobovideo/localpush/LocalPushType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/changdu/mobovideo/localpush/LocalPushConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lj$/time/ZoneId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v1, Lcom/changdu/mobovideo/localpush/LocalPushPlanner;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    invoke-virtual/range {p6 .. p6}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 5
    .line 6
    .line 7
    move-result-wide v2

    .line 8
    const-wide/16 v4, 0x0

    .line 9
    .line 10
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 11
    .line 12
    .line 13
    move-result-wide v18

    .line 14
    sget-object v0, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushStateStore;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwwwwwwwwwwwwwwwwww()J

    .line 17
    .line 18
    .line 19
    move-result-wide v12

    .line 20
    invoke-virtual {v0}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwwwwwwwwwwww()J

    .line 21
    .line 22
    .line 23
    move-result-wide v14

    .line 24
    sget-object v6, Lcom/changdu/mobovideo/localpush/LocalPushMath;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushMath;

    .line 25
    .line 26
    move-object/from16 v7, p1

    .line 27
    .line 28
    move-wide/from16 v8, p2

    .line 29
    .line 30
    move-wide/from16 v10, p4

    .line 31
    .line 32
    move-object/from16 v16, p6

    .line 33
    .line 34
    move-object/from16 v17, p7

    .line 35
    .line 36
    invoke-virtual/range {v6 .. v19}, Lcom/changdu/mobovideo/localpush/LocalPushMath;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushType;JJJJLcom/changdu/mobovideo/localpush/LocalPushConfig;Lj$/time/ZoneId;J)Lkotlin/Pair;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Ljava/lang/Long;

    .line 45
    .line 46
    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Ljava/lang/Number;

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 53
    .line 54
    .line 55
    move-result-wide v4

    .line 56
    if-eqz v3, :cond_0

    .line 57
    .line 58
    invoke-virtual {v0, v4, v5}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Kkkkkkkkkkkkkkkk(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    goto :goto_1

    .line 64
    :cond_0
    :goto_0
    monitor-exit v1

    .line 65
    return-object v3

    .line 66
    :goto_1
    monitor-exit v1

    .line 67
    throw v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JLcom/changdu/mobovideo/localpush/LocalPushConfig;Lj$/time/ZoneId;)J
    .locals 2
    .param p3    # Lcom/changdu/mobovideo/localpush/LocalPushConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lj$/time/ZoneId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p3}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwwwwwwwwwwwwwww()J

    .line 2
    .line 3
    .line 4
    move-result-wide p3

    .line 5
    const-wide/16 v0, 0x3e8

    .line 6
    .line 7
    mul-long/2addr p3, v0

    .line 8
    add-long/2addr p1, p3

    .line 9
    return-wide p1
.end method
