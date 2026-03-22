.class public final Lcom/facebook/ads/redexgen/X/Uz;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ux;,
        Lcom/facebook/ads/redexgen/X/Uy;
    }
.end annotation


# instance fields
.field public A00:J

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:I

.field public final A05:I

.field public final A06:I

.field public final A07:I

.field public final A08:I

.field public final A09:I

.field public final A0A:I

.field public final A0B:Lcom/facebook/ads/redexgen/X/Ux;

.field public final A0C:Ljava/lang/String;

.field public final A0D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Uy;",
            ">;"
        }
    .end annotation
.end field

.field public final A0E:Z

.field public final A0F:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/SQ;Lcom/facebook/ads/redexgen/X/Ux;)V
    .locals 7

    .line 68095
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68096
    const-class v0, Lcom/facebook/ads/redexgen/X/Uz;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A0C:Ljava/lang/String;

    .line 68097
    const/16 v0, 0x65

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A07:I

    .line 68098
    const/16 v0, 0x66

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A0A:I

    .line 68099
    const/16 v0, 0x67

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A08:I

    .line 68100
    const/16 v0, 0x68

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A03:I

    .line 68101
    const/16 v0, 0x69

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A09:I

    .line 68102
    const/16 v0, 0x6a

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A02:I

    .line 68103
    const/16 v0, 0x6b

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A04:I

    .line 68104
    const/16 v0, 0x6c

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A05:I

    .line 68105
    const/16 v0, 0x6d

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A06:I

    .line 68106
    const/16 v0, 0x6e

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A01:I

    .line 68107
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/Uz;->A0E:Z

    .line 68108
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A00:J

    .line 68109
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A0D:Ljava/util/List;

    .line 68110
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/U9;->A0D(Landroid/content/Context;)I

    move-result v1

    .line 68111
    .local v1, "nativeViewabilityHistorySamplingRate":I
    const/4 v0, 0x1

    if-ge v1, v0, :cond_0

    .line 68112
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/Uz;->A0F:Z

    .line 68113
    .end local v3
    :goto_0
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Uz;->A0B:Lcom/facebook/ads/redexgen/X/Ux;

    .line 68114
    return-void

    .line 68115
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/SQ;->A09()Lcom/facebook/ads/redexgen/X/TP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TP;->A00()D

    move-result-wide v4

    .line 68116
    .local v3, "sessionRandom":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    int-to-double v0, v1

    div-double/2addr v2, v0

    cmpg-double v0, v4, v2

    if-gez v0, :cond_1

    const/4 v6, 0x1

    :cond_1
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/Uz;->A0F:Z

    goto :goto_0
.end method

.method private A00()I
    .locals 1

    .line 68117
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A0B:Lcom/facebook/ads/redexgen/X/Ux;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ux;->A7V()I

    move-result v0

    return v0
.end method

.method private A01()I
    .locals 5

    .line 68118
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Uz;->A00:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    .line 68119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A00:J

    sub-long/2addr v2, v0

    long-to-int v0, v2

    return v0

    .line 68120
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Uz;)Ljava/util/List;
    .locals 0

    .line 68121
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A0D:Ljava/util/List;

    return-object p0
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/Uy;)V
    .locals 2

    .line 68122
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Uz;->A0D:Ljava/util/List;

    monitor-enter v1

    .line 68123
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A0D:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68124
    monitor-exit v1

    .line 68125
    return-void

    .line 68126
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final A04()V
    .locals 5

    .line 68127
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A0F:Z

    if-nez v0, :cond_0

    .line 68128
    return-void

    .line 68129
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Uz;->A01()I

    move-result v4

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Uz;->A00()I

    move-result v3

    const/4 v2, 0x0

    const/16 v1, 0x6e

    new-instance v0, Lcom/facebook/ads/redexgen/X/Uy;

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/facebook/ads/redexgen/X/Uy;-><init>(IIILcom/facebook/ads/redexgen/X/Uw;)V

    .line 68130
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Uz;->A03(Lcom/facebook/ads/redexgen/X/Uy;)V

    .line 68131
    return-void
.end method

.method public final A05()V
    .locals 5

    .line 68132
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A0F:Z

    if-nez v0, :cond_0

    .line 68133
    return-void

    .line 68134
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Uz;->A01()I

    move-result v4

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Uz;->A00()I

    move-result v3

    const/4 v2, 0x0

    const/16 v1, 0x6a

    new-instance v0, Lcom/facebook/ads/redexgen/X/Uy;

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/facebook/ads/redexgen/X/Uy;-><init>(IIILcom/facebook/ads/redexgen/X/Uw;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Uz;->A03(Lcom/facebook/ads/redexgen/X/Uy;)V

    .line 68135
    return-void
.end method

.method public final A06()V
    .locals 5

    .line 68136
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A0F:Z

    if-nez v0, :cond_0

    .line 68137
    return-void

    .line 68138
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Uz;->A01()I

    move-result v4

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Uz;->A00()I

    move-result v3

    const/4 v2, 0x0

    const/16 v1, 0x68

    new-instance v0, Lcom/facebook/ads/redexgen/X/Uy;

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/facebook/ads/redexgen/X/Uy;-><init>(IIILcom/facebook/ads/redexgen/X/Uw;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Uz;->A03(Lcom/facebook/ads/redexgen/X/Uy;)V

    .line 68139
    return-void
.end method

.method public final A07()V
    .locals 5

    .line 68140
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A0F:Z

    if-nez v0, :cond_0

    .line 68141
    return-void

    .line 68142
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Uz;->A01()I

    move-result v4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/16 v1, 0x6d

    new-instance v0, Lcom/facebook/ads/redexgen/X/Uy;

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/facebook/ads/redexgen/X/Uy;-><init>(IIILcom/facebook/ads/redexgen/X/Uw;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Uz;->A03(Lcom/facebook/ads/redexgen/X/Uy;)V

    .line 68143
    return-void
.end method

.method public final A08()V
    .locals 5

    .line 68144
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A0F:Z

    if-nez v0, :cond_0

    .line 68145
    return-void

    .line 68146
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Uz;->A01()I

    move-result v4

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Uz;->A00()I

    move-result v3

    const/4 v2, 0x0

    const/16 v1, 0x6c

    new-instance v0, Lcom/facebook/ads/redexgen/X/Uy;

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/facebook/ads/redexgen/X/Uy;-><init>(IIILcom/facebook/ads/redexgen/X/Uw;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Uz;->A03(Lcom/facebook/ads/redexgen/X/Uy;)V

    .line 68147
    return-void
.end method

.method public final A09()V
    .locals 5

    .line 68148
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A0F:Z

    if-nez v0, :cond_0

    .line 68149
    return-void

    .line 68150
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A00:J

    .line 68151
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v1, 0x65

    new-instance v0, Lcom/facebook/ads/redexgen/X/Uy;

    invoke-direct {v0, v2, v1, v4, v3}, Lcom/facebook/ads/redexgen/X/Uy;-><init>(IIILcom/facebook/ads/redexgen/X/Uw;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Uz;->A03(Lcom/facebook/ads/redexgen/X/Uy;)V

    .line 68152
    return-void
.end method

.method public final A0A()V
    .locals 5

    .line 68153
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A0F:Z

    if-nez v0, :cond_0

    .line 68154
    return-void

    .line 68155
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Uz;->A01()I

    move-result v4

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Uz;->A00()I

    move-result v3

    const/4 v2, 0x0

    const/16 v1, 0x69

    new-instance v0, Lcom/facebook/ads/redexgen/X/Uy;

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/facebook/ads/redexgen/X/Uy;-><init>(IIILcom/facebook/ads/redexgen/X/Uw;)V

    .line 68156
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Uz;->A03(Lcom/facebook/ads/redexgen/X/Uy;)V

    .line 68157
    return-void
.end method

.method public final A0B()V
    .locals 5

    .line 68158
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A0F:Z

    if-nez v0, :cond_0

    .line 68159
    return-void

    .line 68160
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Uz;->A01()I

    move-result v4

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Uz;->A00()I

    move-result v3

    const/4 v2, 0x0

    const/16 v1, 0x66

    new-instance v0, Lcom/facebook/ads/redexgen/X/Uy;

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/facebook/ads/redexgen/X/Uy;-><init>(IIILcom/facebook/ads/redexgen/X/Uw;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Uz;->A03(Lcom/facebook/ads/redexgen/X/Uy;)V

    .line 68161
    return-void
.end method

.method public final A0C(Lcom/facebook/ads/redexgen/X/SQ;Ljava/lang/String;)V
    .locals 5

    .line 68162
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A0F:Z

    if-nez v0, :cond_0

    .line 68163
    return-void

    .line 68164
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Uz;->A01()I

    move-result v4

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Uz;->A00()I

    move-result v3

    const/4 v2, 0x0

    const/16 v1, 0x67

    new-instance v0, Lcom/facebook/ads/redexgen/X/Uy;

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/facebook/ads/redexgen/X/Uy;-><init>(IIILcom/facebook/ads/redexgen/X/Uw;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Uz;->A03(Lcom/facebook/ads/redexgen/X/Uy;)V

    .line 68165
    sget-object v1, Lcom/facebook/ads/redexgen/X/XU;->A06:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Uw;

    invoke-direct {v0, p0, p2, p1}, Lcom/facebook/ads/redexgen/X/Uw;-><init>(Lcom/facebook/ads/redexgen/X/Uz;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/SQ;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 68166
    return-void
.end method
