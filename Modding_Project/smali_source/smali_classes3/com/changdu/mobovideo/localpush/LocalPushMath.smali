.class public final Lcom/changdu/mobovideo/localpush/LocalPushMath;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J[\u0010\u0011\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00060\u00102\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J-\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/changdu/mobovideo/localpush/LocalPushMath;",
        "",
        "<init>",
        "()V",
        "Lcom/changdu/mobovideo/localpush/LocalPushType;",
        "type",
        "",
        "candidateAtMs",
        "nowMs",
        "lastActualPushAtMs",
        "queueTailAtMs",
        "Lcom/changdu/mobovideo/localpush/LocalPushConfig;",
        "config",
        "j$/time/ZoneId",
        "zoneId",
        "gapSeconds",
        "Lkotlin/Pair;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lcom/changdu/mobovideo/localpush/LocalPushType;JJJJLcom/changdu/mobovideo/localpush/LocalPushConfig;Lj$/time/ZoneId;J)Lkotlin/Pair;",
        "promotionCandidateAtMs",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(JJJJ)Z",
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
.field public static final INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushMath;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/changdu/mobovideo/localpush/LocalPushMath;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/changdu/mobovideo/localpush/LocalPushMath;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/changdu/mobovideo/localpush/LocalPushMath;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushMath;

    .line 7
    .line 8
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
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JJJJ)Z
    .locals 0

    .line 1
    invoke-static {p3, p4, p5, p6}, Ljava/lang/Math;->max(JJ)J

    .line 2
    .line 3
    .line 4
    move-result-wide p3

    .line 5
    const-wide/16 p5, 0x0

    .line 6
    .line 7
    cmp-long p5, p3, p5

    .line 8
    .line 9
    const/4 p6, 0x0

    .line 10
    if-gtz p5, :cond_0

    .line 11
    .line 12
    return p6

    .line 13
    :cond_0
    sub-long/2addr p1, p3

    .line 14
    const-wide/16 p3, 0x3e8

    .line 15
    .line 16
    mul-long/2addr p7, p3

    .line 17
    cmp-long p1, p1, p7

    .line 18
    .line 19
    if-gez p1, :cond_1

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    return p1

    .line 23
    :cond_1
    return p6
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushType;JJJJLcom/changdu/mobovideo/localpush/LocalPushConfig;Lj$/time/ZoneId;J)Lkotlin/Pair;
    .locals 9
    .param p1    # Lcom/changdu/mobovideo/localpush/LocalPushType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Lcom/changdu/mobovideo/localpush/LocalPushConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Lj$/time/ZoneId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/changdu/mobovideo/localpush/LocalPushType;",
            "JJJJ",
            "Lcom/changdu/mobovideo/localpush/LocalPushConfig;",
            "Lj$/time/ZoneId;",
            "J)",
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-wide/from16 v0, p8

    .line 2
    .line 3
    invoke-static/range {p2 .. p5}, Ljava/lang/Math;->max(JJ)J

    .line 4
    .line 5
    .line 6
    move-result-wide p2

    .line 7
    cmp-long v2, v0, p4

    .line 8
    .line 9
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    if-lez v2, :cond_0

    .line 12
    .line 13
    move-wide v7, v0

    .line 14
    :goto_0
    move-wide v5, p6

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    move-wide v7, v3

    .line 17
    goto :goto_0

    .line 18
    :goto_1
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 19
    .line 20
    .line 21
    move-result-wide v5

    .line 22
    const-wide/16 v7, 0x3e8

    .line 23
    .line 24
    mul-long v7, v7, p12

    .line 25
    .line 26
    cmp-long v2, v5, v3

    .line 27
    .line 28
    if-lez v2, :cond_1

    .line 29
    .line 30
    add-long/2addr v5, v7

    .line 31
    invoke-static {p2, p3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 32
    .line 33
    .line 34
    move-result-wide p2

    .line 35
    :cond_1
    move-wide v3, p2

    .line 36
    sget-object v2, Lcom/changdu/mobovideo/localpush/LocalPushTime;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushTime;

    .line 37
    .line 38
    move-object v7, p1

    .line 39
    move-object/from16 v5, p10

    .line 40
    .line 41
    move-object/from16 v6, p11

    .line 42
    .line 43
    invoke-virtual/range {v2 .. v7}, Lcom/changdu/mobovideo/localpush/LocalPushTime;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JLcom/changdu/mobovideo/localpush/LocalPushConfig;Lj$/time/ZoneId;Lcom/changdu/mobovideo/localpush/LocalPushType;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const/4 p2, 0x0

    .line 54
    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    return-object p1

    .line 59
    :cond_2
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 60
    .line 61
    .line 62
    move-result-wide p1

    .line 63
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {p3, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    return-object p1
.end method
