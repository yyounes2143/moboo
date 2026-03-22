.class public abstract Lcom/facebook/ads/redexgen/X/9Z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/nM;
.implements Lcom/facebook/ads/redexgen/X/7D;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:Lcom/facebook/ads/redexgen/X/7G;

.field public A06:Lcom/facebook/ads/redexgen/X/7m;

.field public A07:Lcom/facebook/ads/redexgen/X/Cr;

.field public A08:Z

.field public A09:Z

.field public A0A:[Lcom/facebook/ads/redexgen/X/or;

.field public A0B:Lcom/facebook/ads/redexgen/X/hX;
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "NEW_CLASS_ARG"
        }
        value = "D18870411: Adding start stall debug reason"
    .end annotation
.end field

.field public final A0C:I

.field public final A0D:Lcom/facebook/ads/redexgen/X/6N;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 28196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28197
    sget-object v0, Lcom/facebook/ads/redexgen/X/hX;->A09:Lcom/facebook/ads/redexgen/X/hX;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9Z;->A0B:Lcom/facebook/ads/redexgen/X/hX;

    .line 28198
    iput p1, p0, Lcom/facebook/ads/redexgen/X/9Z;->A0C:I

    .line 28199
    new-instance v0, Lcom/facebook/ads/redexgen/X/6N;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/6N;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9Z;->A0D:Lcom/facebook/ads/redexgen/X/6N;

    .line 28200
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/9Z;->A03:J

    .line 28201
    return-void
.end method

.method private final A1O()I
    .locals 1

    .line 28202
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9Z;->A00:I

    return v0
.end method

.method private A1P(JZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 28203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9Z;->A08:Z

    .line 28204
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/9Z;->A02:J

    .line 28205
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/9Z;->A03:J

    .line 28206
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/9Z;->A1a(JZ)V

    .line 28207
    return-void
.end method


# virtual methods
.method public final A1Q(J)I
    .locals 3

    .line 28208
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9Z;->A07:Lcom/facebook/ads/redexgen/X/Cr;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Cr;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/9Z;->A04:J

    sub-long/2addr p1, v0

    invoke-interface {v2, p1, p2}, Lcom/facebook/ads/redexgen/X/Cr;->AJI(J)I

    move-result v0

    return v0
.end method

.method public final A1R(Lcom/facebook/ads/redexgen/X/6N;Lcom/facebook/ads/redexgen/X/nY;I)I
    .locals 7
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "FEATURE_LOGIC"
        }
        value = "Keep track of the non-adjusted timestamp"
    .end annotation

    .line 28209
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9Z;->A07:Lcom/facebook/ads/redexgen/X/Cr;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Cr;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Cr;->AGf(Lcom/facebook/ads/redexgen/X/6N;Lcom/facebook/ads/redexgen/X/nY;I)I

    move-result v5

    .line 28210
    .local v0, "result":I
    const/4 v2, -0x4

    if-ne v5, v2, :cond_2

    .line 28211
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/5I;->A05()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28212
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/9Z;->A03:J

    .line 28213
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9Z;->A08:Z

    if-eqz v0, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x3

    goto :goto_0

    .line 28214
    :cond_1
    iget-wide v0, p2, Lcom/facebook/ads/redexgen/X/nY;->A01:J

    iput-wide v0, p2, Lcom/facebook/ads/redexgen/X/nY;->A00:J

    .line 28215
    iget-wide v2, p2, Lcom/facebook/ads/redexgen/X/nY;->A01:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/9Z;->A04:J

    add-long/2addr v2, v0

    iput-wide v2, p2, Lcom/facebook/ads/redexgen/X/nY;->A01:J

    .line 28216
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/9Z;->A03:J

    iget-wide v0, p2, Lcom/facebook/ads/redexgen/X/nY;->A01:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/9Z;->A03:J

    goto :goto_1

    .line 28217
    :cond_2
    const/4 v0, -0x5

    if-ne v5, v0, :cond_3

    .line 28218
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/6N;->A00:Lcom/facebook/ads/redexgen/X/or;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/or;

    .line 28219
    .local v1, "format":Lcom/facebook/ads/redexgen/X/or;
    iget-wide v3, v6, Lcom/facebook/ads/redexgen/X/or;->A0M:J

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v0, v3, v1

    if-eqz v0, :cond_3

    .line 28220
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/or;->A07()Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v4

    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/or;->A0M:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/9Z;->A04:J

    add-long/2addr v2, v0

    .line 28221
    invoke-virtual {v4, v2, v3}, Lcom/facebook/ads/redexgen/X/2D;->A0s(J)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 28222
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A14()Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    .line 28223
    iput-object v0, p1, Lcom/facebook/ads/redexgen/X/6N;->A00:Lcom/facebook/ads/redexgen/X/or;

    .line 28224
    .end local v1    # "format":Lcom/facebook/ads/redexgen/X/or;
    :cond_3
    :goto_1
    return v5
.end method

.method public final A1S(Ljava/lang/Throwable;Lcom/facebook/ads/redexgen/X/or;I)Lcom/facebook/ads/redexgen/X/9Y;
    .locals 1

    .line 28225
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/facebook/ads/redexgen/X/9Z;->A1T(Ljava/lang/Throwable;Lcom/facebook/ads/redexgen/X/or;ZI)Lcom/facebook/ads/redexgen/X/9Y;

    move-result-object v0

    return-object v0
.end method

.method public final A1T(Ljava/lang/Throwable;Lcom/facebook/ads/redexgen/X/or;ZI)Lcom/facebook/ads/redexgen/X/9Y;
    .locals 7

    .line 28226
    const/4 v4, 0x4

    .line 28227
    .local v0, "formatSupport":I
    move-object v3, p2

    if-eqz v3, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9Z;->A09:Z

    if-nez v0, :cond_0

    .line 28228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9Z;->A09:Z

    .line 28229
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p0, v3}, Lcom/facebook/ads/redexgen/X/7D;->AJb(Lcom/facebook/ads/redexgen/X/or;)I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/76;->A03(I)I

    move-result v4

    goto :goto_0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/9Y; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28230
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/9Z;->A09:Z

    .line 28231
    throw v0

    .line 28232
    :catch_0
    :goto_0
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/9Z;->A09:Z

    .line 28233
    :cond_0
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/nM;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9Z;->A1O()I

    move-result v2

    .line 28234
    move v6, p4

    move v5, p3

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/9Y;->A04(Ljava/lang/Throwable;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/or;IZI)Lcom/facebook/ads/redexgen/X/9Y;

    move-result-object v0

    return-object v0
.end method

.method public final A1U()Lcom/facebook/ads/redexgen/X/6N;
    .locals 1

    .line 28235
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9Z;->A0D:Lcom/facebook/ads/redexgen/X/6N;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6N;->A00()V

    .line 28236
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9Z;->A0D:Lcom/facebook/ads/redexgen/X/6N;

    return-object v0
.end method

.method public final A1V()Lcom/facebook/ads/redexgen/X/7G;
    .locals 1

    .line 28237
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9Z;->A05:Lcom/facebook/ads/redexgen/X/7G;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/7G;

    return-object v0
.end method

.method public final A1W()Lcom/facebook/ads/redexgen/X/7m;
    .locals 1

    .line 28238
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9Z;->A06:Lcom/facebook/ads/redexgen/X/7m;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/7m;

    return-object v0
.end method

.method public A1X()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 28239
    return-void
.end method

.method public A1Y()V
    .locals 0

    .line 28240
    return-void
.end method

.method public abstract A1Z()V
.end method

.method public abstract A1a(JZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation
.end method

.method public A1b(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 28241
    return-void
.end method

.method public abstract A1c([Lcom/facebook/ads/redexgen/X/or;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation
.end method

.method public final A1d()Z
    .locals 1

    .line 28242
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9Z;->A9h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9Z;->A08:Z

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9Z;->A07:Lcom/facebook/ads/redexgen/X/Cr;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Cr;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Cr;->AAV()Z

    move-result v0

    goto :goto_0
.end method

.method public final A1e()[Lcom/facebook/ads/redexgen/X/or;
    .locals 1

    .line 28243
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9Z;->A0A:[Lcom/facebook/ads/redexgen/X/or;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/or;

    return-object v0
.end method

.method public final A5p()V
    .locals 3

    .line 28244
    iget v2, p0, Lcom/facebook/ads/redexgen/X/9Z;->A01:I

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 28245
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9Z;->A0D:Lcom/facebook/ads/redexgen/X/6N;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6N;->A00()V

    .line 28246
    iput v1, p0, Lcom/facebook/ads/redexgen/X/9Z;->A01:I

    .line 28247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9Z;->A07:Lcom/facebook/ads/redexgen/X/Cr;

    .line 28248
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9Z;->A0A:[Lcom/facebook/ads/redexgen/X/or;

    .line 28249
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/9Z;->A08:Z

    .line 28250
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9Z;->A1Z()V

    .line 28251
    return-void

    .line 28252
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A6D(Lcom/facebook/ads/redexgen/X/7G;[Lcom/facebook/ads/redexgen/X/or;Lcom/facebook/ads/redexgen/X/Cr;JZZJJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 28253
    move-object v2, p0

    iget v0, v2, Lcom/facebook/ads/redexgen/X/9Z;->A01:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 28254
    iput-object p1, v2, Lcom/facebook/ads/redexgen/X/9Z;->A05:Lcom/facebook/ads/redexgen/X/7G;

    .line 28255
    iput v1, v2, Lcom/facebook/ads/redexgen/X/9Z;->A01:I

    .line 28256
    move v0, p7

    invoke-virtual {p0, p6, v0}, Lcom/facebook/ads/redexgen/X/9Z;->A1b(ZZ)V

    .line 28257
    move-object v0, p0

    move-wide/from16 v5, p10

    move-wide v3, p8

    move-object v2, p3

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/9Z;->AHq([Lcom/facebook/ads/redexgen/X/or;Lcom/facebook/ads/redexgen/X/Cr;JJ)V

    .line 28258
    invoke-direct {p0, p4, p5, p6}, Lcom/facebook/ads/redexgen/X/9Z;->A1P(JZ)V

    .line 28259
    return-void

    .line 28260
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A75()Lcom/facebook/ads/redexgen/X/7D;
    .locals 0

    .line 28261
    return-object p0
.end method

.method public A8L()Lcom/facebook/ads/redexgen/X/6W;
    .locals 1

    .line 28262
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A91()Lcom/facebook/ads/redexgen/X/hX;
    .locals 1
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "NEW_METHOD"
        }
        value = "D18870411: Adding start stall debug reason"
    .end annotation

    .line 28263
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9Z;->A0B:Lcom/facebook/ads/redexgen/X/hX;

    return-object v0
.end method

.method public final A92()I
    .locals 1

    .line 28264
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9Z;->A01:I

    return v0
.end method

.method public final A95()Lcom/facebook/ads/redexgen/X/Cr;
    .locals 1

    .line 28265
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9Z;->A07:Lcom/facebook/ads/redexgen/X/Cr;

    return-object v0
.end method

.method public final A9F()I
    .locals 1

    .line 28266
    iget v0, p0, Lcom/facebook/ads/redexgen/X/9Z;->A0C:I

    return v0
.end method

.method public A9a(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 28267
    return-void
.end method

.method public final A9h()Z
    .locals 5

    .line 28268
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/9Z;->A03:J

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AA1(ILcom/facebook/ads/redexgen/X/7m;)V
    .locals 0

    .line 28269
    iput p1, p0, Lcom/facebook/ads/redexgen/X/9Z;->A00:I

    .line 28270
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/9Z;->A06:Lcom/facebook/ads/redexgen/X/7m;

    .line 28271
    return-void
.end method

.method public final AAE()Z
    .locals 1

    .line 28272
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9Z;->A08:Z

    return v0
.end method

.method public final ABv()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28273
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9Z;->A07:Lcom/facebook/ads/redexgen/X/Cr;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Cr;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Cr;->ABs()V

    .line 28274
    return-void
.end method

.method public final AHq([Lcom/facebook/ads/redexgen/X/or;Lcom/facebook/ads/redexgen/X/Cr;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 28275
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9Z;->A08:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 28276
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/9Z;->A07:Lcom/facebook/ads/redexgen/X/Cr;

    .line 28277
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/9Z;->A03:J

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, v3, v1

    move-wide v2, p3

    if-nez v0, :cond_0

    .line 28278
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/9Z;->A03:J

    .line 28279
    :cond_0
    move-object v1, p1

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/9Z;->A0A:[Lcom/facebook/ads/redexgen/X/or;

    .line 28280
    move-wide v4, p5

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/9Z;->A04:J

    .line 28281
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/9Z;->A1c([Lcom/facebook/ads/redexgen/X/or;JJ)V

    .line 28282
    return-void
.end method

.method public final AI2(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 28283
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/9Z;->A1P(JZ)V

    .line 28284
    return-void
.end method

.method public final AId()V
    .locals 1

    .line 28285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9Z;->A08:Z

    .line 28286
    return-void
.end method

.method public AJd()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 28287
    const/4 v0, 0x0

    return v0
.end method

.method public final start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9Y;
        }
    .end annotation

    .line 28288
    iget v1, p0, Lcom/facebook/ads/redexgen/X/9Z;->A01:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 28289
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9Z;->A01:I

    .line 28290
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9Z;->A1X()V

    .line 28291
    return-void

    .line 28292
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final stop()V
    .locals 3

    .line 28293
    iget v2, p0, Lcom/facebook/ads/redexgen/X/9Z;->A01:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne v2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 28294
    iput v1, p0, Lcom/facebook/ads/redexgen/X/9Z;->A01:I

    .line 28295
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9Z;->A1Y()V

    .line 28296
    return-void

    .line 28297
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
