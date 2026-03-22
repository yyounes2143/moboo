.class public final Lcom/changdu/mobovideo/localpush/LocalPushState;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0014\u0008\u0086\u0008\u0018\u00002\u00020\u0001B{\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\n\u0012\u000e\u0008\u0002\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0084\u0001\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00022\u0008\u0008\u0002\u0010\t\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\n2\u0008\u0008\u0002\u0010\r\u001a\u00020\n2\u000e\u0008\u0002\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eH\u00c6\u0001\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0010\u0010\u0016\u001a\u00020\u0015H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\nH\u00d6\u0001\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u001a\u0010\u001c\u001a\u00020\u001b2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u001e\u001a\u0004\u0008\u001f\u0010 R\u0017\u0010\u0004\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008!\u0010\u001e\u001a\u0004\u0008\"\u0010 R\u0017\u0010\u0005\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010\u001e\u001a\u0004\u0008#\u0010 R\u0017\u0010\u0006\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008$\u0010\u001e\u001a\u0004\u0008%\u0010 R\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008&\u0010\u001e\u001a\u0004\u0008&\u0010 R\u0017\u0010\u0008\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\'\u0010\u001e\u001a\u0004\u0008$\u0010 R\u0017\u0010\t\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008%\u0010\u001e\u001a\u0004\u0008\'\u0010 R\u0017\u0010\u000b\u001a\u00020\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008#\u0010(\u001a\u0004\u0008)\u0010\u0019R\u0017\u0010\u000c\u001a\u00020\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008*\u0010(\u001a\u0004\u0008+\u0010\u0019R\u0017\u0010\r\u001a\u00020\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008\"\u0010(\u001a\u0004\u0008*\u0010\u0019R\u001d\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e8\u0006\u00a2\u0006\u000c\n\u0004\u0008+\u0010,\u001a\u0004\u0008-\u0010.\u00a8\u0006/"
    }
    d2 = {
        "Lcom/changdu/mobovideo/localpush/LocalPushState;",
        "",
        "",
        "lastActualPushAtMs",
        "queueTailAtMs",
        "nextSignInCandidateAtMs",
        "lastSignInPushAtMs",
        "lastRecallPushAtMs",
        "lastPromotionPushAtMs",
        "lastRecallTriggerAtMs",
        "",
        "signInContentIndex",
        "recallContentIndex",
        "promotionContentIndex",
        "",
        "Lcom/changdu/mobovideo/localpush/PromotionSeriesRecord;",
        "recentPromotionSeries",
        "<init>",
        "(JJJJJJJIIILjava/util/List;)V",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(JJJJJJJIIILjava/util/List;)Lcom/changdu/mobovideo/localpush/LocalPushState;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "J",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()J",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "I",
        "Wwwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwwwwwww",
        "Ljava/util/List;",
        "Wwwwwwwwwwwwwwwwwwwwwww",
        "()Ljava/util/List;",
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


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/changdu/mobovideo/localpush/PromotionSeriesRecord;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:I

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwww:I

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwww:I

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwww:J

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J


# direct methods
.method public constructor <init>()V
    .locals 21

    .line 1
    const/16 v19, 0x7ff

    const/16 v20, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v20}, Lcom/changdu/mobovideo/localpush/LocalPushState;-><init>(JJJJJJJIIILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JJJJJJJIIILjava/util/List;)V
    .locals 0
    .param p18    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJJJJJIII",
            "Ljava/util/List<",
            "Lcom/changdu/mobovideo/localpush/PromotionSeriesRecord;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 4
    iput-wide p3, p0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 5
    iput-wide p5, p0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 6
    iput-wide p7, p0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 7
    iput-wide p9, p0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 8
    iput-wide p11, p0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 9
    iput-wide p13, p0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 10
    iput p15, p0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:I

    move/from16 p1, p16

    .line 11
    iput p1, p0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwww:I

    move/from16 p1, p17

    .line 12
    iput p1, p0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwww:I

    move-object/from16 p1, p18

    .line 13
    iput-object p1, p0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(JJJJJJJIIILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 17

    move/from16 v0, p19

    and-int/lit8 v1, v0, 0x1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    move-wide v4, v2

    goto :goto_0

    :cond_0
    move-wide/from16 v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move-wide v6, v2

    goto :goto_1

    :cond_1
    move-wide/from16 v6, p3

    :goto_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move-wide v8, v2

    goto :goto_2

    :cond_2
    move-wide/from16 v8, p5

    :goto_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    move-wide v10, v2

    goto :goto_3

    :cond_3
    move-wide/from16 v10, p7

    :goto_3
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_4

    move-wide v12, v2

    goto :goto_4

    :cond_4
    move-wide/from16 v12, p9

    :goto_4
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_5

    move-wide v14, v2

    goto :goto_5

    :cond_5
    move-wide/from16 v14, p11

    :goto_5
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_6

    goto :goto_6

    :cond_6
    move-wide/from16 v2, p13

    :goto_6
    and-int/lit16 v1, v0, 0x80

    const/16 v16, 0x0

    if-eqz v1, :cond_7

    move/from16 v1, v16

    goto :goto_7

    :cond_7
    move/from16 v1, p15

    :goto_7
    move/from16 p1, v1

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_8

    move/from16 v1, v16

    goto :goto_8

    :cond_8
    move/from16 v1, p16

    :goto_8
    move/from16 p2, v1

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_9

    goto :goto_9

    :cond_9
    move/from16 v16, p17

    :goto_9
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    .line 14
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object/from16 p19, v0

    :goto_a
    move/from16 p16, p1

    move/from16 p17, p2

    move-wide/from16 p14, v2

    move-wide/from16 p2, v4

    move-wide/from16 p4, v6

    move-wide/from16 p6, v8

    move-wide/from16 p8, v10

    move-wide/from16 p10, v12

    move-wide/from16 p12, v14

    move/from16 p18, v16

    move-object/from16 p1, p0

    goto :goto_b

    :cond_a
    move-object/from16 p19, p18

    goto :goto_a

    .line 15
    :goto_b
    invoke-direct/range {p1 .. p19}, Lcom/changdu/mobovideo/localpush/LocalPushState;-><init>(JJJJJJJIIILjava/util/List;)V

    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushState;JJJJJJJIIILjava/util/List;ILjava/lang/Object;)Lcom/changdu/mobovideo/localpush/LocalPushState;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p19

    .line 4
    .line 5
    and-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    iget-wide v2, v0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-wide/from16 v2, p1

    .line 13
    .line 14
    :goto_0
    and-int/lit8 v4, v1, 0x2

    .line 15
    .line 16
    if-eqz v4, :cond_1

    .line 17
    .line 18
    iget-wide v4, v0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move-wide/from16 v4, p3

    .line 22
    .line 23
    :goto_1
    and-int/lit8 v6, v1, 0x4

    .line 24
    .line 25
    if-eqz v6, :cond_2

    .line 26
    .line 27
    iget-wide v6, v0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_2
    move-wide/from16 v6, p5

    .line 31
    .line 32
    :goto_2
    and-int/lit8 v8, v1, 0x8

    .line 33
    .line 34
    if-eqz v8, :cond_3

    .line 35
    .line 36
    iget-wide v8, v0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_3
    move-wide/from16 v8, p7

    .line 40
    .line 41
    :goto_3
    and-int/lit8 v10, v1, 0x10

    .line 42
    .line 43
    if-eqz v10, :cond_4

    .line 44
    .line 45
    iget-wide v10, v0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 46
    .line 47
    goto :goto_4

    .line 48
    :cond_4
    move-wide/from16 v10, p9

    .line 49
    .line 50
    :goto_4
    and-int/lit8 v12, v1, 0x20

    .line 51
    .line 52
    if-eqz v12, :cond_5

    .line 53
    .line 54
    iget-wide v12, v0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 55
    .line 56
    goto :goto_5

    .line 57
    :cond_5
    move-wide/from16 v12, p11

    .line 58
    .line 59
    :goto_5
    and-int/lit8 v14, v1, 0x40

    .line 60
    .line 61
    if-eqz v14, :cond_6

    .line 62
    .line 63
    iget-wide v14, v0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 64
    .line 65
    goto :goto_6

    .line 66
    :cond_6
    move-wide/from16 v14, p13

    .line 67
    .line 68
    :goto_6
    move-wide/from16 v16, v2

    .line 69
    .line 70
    and-int/lit16 v2, v1, 0x80

    .line 71
    .line 72
    if-eqz v2, :cond_7

    .line 73
    .line 74
    iget v2, v0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 75
    .line 76
    goto :goto_7

    .line 77
    :cond_7
    move/from16 v2, p15

    .line 78
    .line 79
    :goto_7
    and-int/lit16 v3, v1, 0x100

    .line 80
    .line 81
    if-eqz v3, :cond_8

    .line 82
    .line 83
    iget v3, v0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 84
    .line 85
    goto :goto_8

    .line 86
    :cond_8
    move/from16 v3, p16

    .line 87
    .line 88
    :goto_8
    move/from16 p1, v2

    .line 89
    .line 90
    and-int/lit16 v2, v1, 0x200

    .line 91
    .line 92
    if-eqz v2, :cond_9

    .line 93
    .line 94
    iget v2, v0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 95
    .line 96
    goto :goto_9

    .line 97
    :cond_9
    move/from16 v2, p17

    .line 98
    .line 99
    :goto_9
    and-int/lit16 v1, v1, 0x400

    .line 100
    .line 101
    if-eqz v1, :cond_a

    .line 102
    .line 103
    iget-object v1, v0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 104
    .line 105
    move-object/from16 p19, v1

    .line 106
    .line 107
    :goto_a
    move/from16 p16, p1

    .line 108
    .line 109
    move-object/from16 p1, v0

    .line 110
    .line 111
    move/from16 p18, v2

    .line 112
    .line 113
    move/from16 p17, v3

    .line 114
    .line 115
    move-wide/from16 p4, v4

    .line 116
    .line 117
    move-wide/from16 p6, v6

    .line 118
    .line 119
    move-wide/from16 p8, v8

    .line 120
    .line 121
    move-wide/from16 p10, v10

    .line 122
    .line 123
    move-wide/from16 p12, v12

    .line 124
    .line 125
    move-wide/from16 p14, v14

    .line 126
    .line 127
    move-wide/from16 p2, v16

    .line 128
    .line 129
    goto :goto_b

    .line 130
    :cond_a
    move-object/from16 p19, p18

    .line 131
    .line 132
    goto :goto_a

    .line 133
    :goto_b
    invoke-virtual/range {p1 .. p19}, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JJJJJJJIIILjava/util/List;)Lcom/changdu/mobovideo/localpush/LocalPushState;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    return-object v0
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwww()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    return v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/changdu/mobovideo/localpush/PromotionSeriesRecord;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwww()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    return v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwww()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwww()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    return v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwww()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwww()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JJJJJJJIIILjava/util/List;)Lcom/changdu/mobovideo/localpush/LocalPushState;
    .locals 19
    .param p18    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJJJJJIII",
            "Ljava/util/List<",
            "Lcom/changdu/mobovideo/localpush/PromotionSeriesRecord;",
            ">;)",
            "Lcom/changdu/mobovideo/localpush/LocalPushState;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/changdu/mobovideo/localpush/LocalPushState;

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v3, p3

    .line 6
    .line 7
    move-wide/from16 v5, p5

    .line 8
    .line 9
    move-wide/from16 v7, p7

    .line 10
    .line 11
    move-wide/from16 v9, p9

    .line 12
    .line 13
    move-wide/from16 v11, p11

    .line 14
    .line 15
    move-wide/from16 v13, p13

    .line 16
    .line 17
    move/from16 v15, p15

    .line 18
    .line 19
    move/from16 v16, p16

    .line 20
    .line 21
    move/from16 v17, p17

    .line 22
    .line 23
    move-object/from16 v18, p18

    .line 24
    .line 25
    invoke-direct/range {v0 .. v18}, Lcom/changdu/mobovideo/localpush/LocalPushState;-><init>(JJJJJJJIIILjava/util/List;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/changdu/mobovideo/localpush/LocalPushState;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/changdu/mobovideo/localpush/LocalPushState;

    .line 12
    .line 13
    iget-wide v3, p0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 14
    .line 15
    iget-wide v5, p1, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 16
    .line 17
    cmp-long v1, v3, v5

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    return v2

    .line 22
    :cond_2
    iget-wide v3, p0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 23
    .line 24
    iget-wide v5, p1, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 25
    .line 26
    cmp-long v1, v3, v5

    .line 27
    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-wide v3, p0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 32
    .line 33
    iget-wide v5, p1, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 34
    .line 35
    cmp-long v1, v3, v5

    .line 36
    .line 37
    if-eqz v1, :cond_4

    .line 38
    .line 39
    return v2

    .line 40
    :cond_4
    iget-wide v3, p0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 41
    .line 42
    iget-wide v5, p1, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 43
    .line 44
    cmp-long v1, v3, v5

    .line 45
    .line 46
    if-eqz v1, :cond_5

    .line 47
    .line 48
    return v2

    .line 49
    :cond_5
    iget-wide v3, p0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 50
    .line 51
    iget-wide v5, p1, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 52
    .line 53
    cmp-long v1, v3, v5

    .line 54
    .line 55
    if-eqz v1, :cond_6

    .line 56
    .line 57
    return v2

    .line 58
    :cond_6
    iget-wide v3, p0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 59
    .line 60
    iget-wide v5, p1, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 61
    .line 62
    cmp-long v1, v3, v5

    .line 63
    .line 64
    if-eqz v1, :cond_7

    .line 65
    .line 66
    return v2

    .line 67
    :cond_7
    iget-wide v3, p0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 68
    .line 69
    iget-wide v5, p1, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 70
    .line 71
    cmp-long v1, v3, v5

    .line 72
    .line 73
    if-eqz v1, :cond_8

    .line 74
    .line 75
    return v2

    .line 76
    :cond_8
    iget v1, p0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 77
    .line 78
    iget v3, p1, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 79
    .line 80
    if-eq v1, v3, :cond_9

    .line 81
    .line 82
    return v2

    .line 83
    :cond_9
    iget v1, p0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 84
    .line 85
    iget v3, p1, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 86
    .line 87
    if-eq v1, v3, :cond_a

    .line 88
    .line 89
    return v2

    .line 90
    :cond_a
    iget v1, p0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 91
    .line 92
    iget v3, p1, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 93
    .line 94
    if-eq v1, v3, :cond_b

    .line 95
    .line 96
    return v2

    .line 97
    :cond_b
    iget-object v1, p0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 98
    .line 99
    iget-object p1, p1, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 100
    .line 101
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-nez p1, :cond_c

    .line 106
    .line 107
    return v2

    .line 108
    :cond_c
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroidx/collection/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-wide v1, p0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 10
    .line 11
    invoke-static {v1, v2}, Landroidx/collection/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-wide v1, p0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 19
    .line 20
    invoke-static {v1, v2}, Landroidx/collection/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-wide v1, p0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 28
    .line 29
    invoke-static {v1, v2}, Landroidx/collection/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    mul-int/lit8 v0, v0, 0x1f

    .line 35
    .line 36
    iget-wide v1, p0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 37
    .line 38
    invoke-static {v1, v2}, Landroidx/collection/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/2addr v0, v1

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget-wide v1, p0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 46
    .line 47
    invoke-static {v1, v2}, Landroidx/collection/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    add-int/2addr v0, v1

    .line 52
    mul-int/lit8 v0, v0, 0x1f

    .line 53
    .line 54
    iget-wide v1, p0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 55
    .line 56
    invoke-static {v1, v2}, Landroidx/collection/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    add-int/2addr v0, v1

    .line 61
    mul-int/lit8 v0, v0, 0x1f

    .line 62
    .line 63
    iget v1, p0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 64
    .line 65
    add-int/2addr v0, v1

    .line 66
    mul-int/lit8 v0, v0, 0x1f

    .line 67
    .line 68
    iget v1, p0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 69
    .line 70
    add-int/2addr v0, v1

    .line 71
    mul-int/lit8 v0, v0, 0x1f

    .line 72
    .line 73
    iget v1, p0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 74
    .line 75
    add-int/2addr v0, v1

    .line 76
    mul-int/lit8 v0, v0, 0x1f

    .line 77
    .line 78
    iget-object v1, p0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    add-int/2addr v0, v1

    .line 85
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 20
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-wide v1, v0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 4
    .line 5
    iget-wide v3, v0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 6
    .line 7
    iget-wide v5, v0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 8
    .line 9
    iget-wide v7, v0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 10
    .line 11
    iget-wide v9, v0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 12
    .line 13
    iget-wide v11, v0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 14
    .line 15
    iget-wide v13, v0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 16
    .line 17
    iget v15, v0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 18
    .line 19
    move/from16 v16, v15

    .line 20
    .line 21
    iget v15, v0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 22
    .line 23
    move/from16 v17, v15

    .line 24
    .line 25
    iget v15, v0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 26
    .line 27
    move/from16 v18, v15

    .line 28
    .line 29
    iget-object v15, v0, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    move-object/from16 v19, v15

    .line 37
    .line 38
    const-string v15, "LocalPushState(lastActualPushAtMs="

    .line 39
    .line 40
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", queueTailAtMs="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ", nextSignInCandidateAtMs="

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v1, ", lastSignInPushAtMs="

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v1, ", lastRecallPushAtMs="

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v1, ", lastPromotionPushAtMs="

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, ", lastRecallTriggerAtMs="

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v1, ", signInContentIndex="

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    move/from16 v1, v16

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v1, ", recallContentIndex="

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    move/from16 v1, v17

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v1, ", promotionContentIndex="

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    move/from16 v1, v18

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v1, ", recentPromotionSeries="

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    move-object/from16 v1, v19

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v1, ")"

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    return-object v0
.end method
