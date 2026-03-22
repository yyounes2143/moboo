.class public final Lcom/facebook/ads/redexgen/X/26;
.super Lcom/facebook/ads/redexgen/X/Or;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/SM;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/eX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewabilityCheckRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/Or<",
        "Lcom/facebook/ads/redexgen/X/eX;",
        ">;",
        "Lcom/facebook/ads/redexgen/X/SM;"
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/dL;

.field public A01:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/eX;Lcom/facebook/ads/redexgen/X/dL;)V
    .locals 1

    .line 9258
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Or;-><init>(Ljava/lang/Object;)V

    .line 9259
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/26;->A00:Lcom/facebook/ads/redexgen/X/dL;

    .line 9260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/26;->A01:Z

    .line 9261
    return-void
.end method

.method private A00(I)V
    .locals 1

    .line 9262
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/26;->A01:Z

    if-nez v0, :cond_0

    .line 9263
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/26;->A00:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/LH;->A3n(I)V

    .line 9264
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/26;->A01:Z

    .line 9265
    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 11

    .line 9266
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Or;->A08()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/eX;

    .line 9267
    .local v0, "checker":Lcom/facebook/ads/redexgen/X/eX;
    const/4 v9, 0x0

    if-nez v4, :cond_0

    .line 9268
    invoke-direct {p0, v9}, Lcom/facebook/ads/redexgen/X/26;->A00(I)V

    .line 9269
    return-void

    .line 9270
    :cond_0
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/eX;->A0C(Lcom/facebook/ads/redexgen/X/eX;)Landroid/view/View;

    move-result-object v3

    .line 9271
    .local v2, "adView":Landroid/view/View;
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/eX;->A0I(Lcom/facebook/ads/redexgen/X/eX;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/eW;

    .line 9272
    .local v3, "listener":Lcom/facebook/ads/redexgen/X/eW;
    const/4 v6, 0x1

    if-nez v3, :cond_4

    const/4 v1, 0x1

    .line 9273
    .local v5, "viewIsNull":Z
    :goto_0
    if-nez v1, :cond_1

    if-nez v2, :cond_5

    .line 9274
    .end local v6
    .end local v7
    .end local v8
    .end local v9
    :cond_1
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/eX;->A0P(Lcom/facebook/ads/redexgen/X/eX;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9275
    if-eqz v1, :cond_3

    .line 9276
    :goto_1
    invoke-direct {p0, v6}, Lcom/facebook/ads/redexgen/X/26;->A00(I)V

    .line 9277
    :cond_2
    return-void

    .line 9278
    :cond_3
    const/4 v6, 0x2

    goto :goto_1

    .line 9279
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 9280
    :cond_5
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/eX;->A03(Lcom/facebook/ads/redexgen/X/eX;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/26;->A00:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/eX;->A0E(Landroid/view/View;ILcom/facebook/ads/redexgen/X/dL;)Lcom/facebook/ads/redexgen/X/eY;

    move-result-object v5

    .line 9281
    .local v6, "viewabilityResult":Lcom/facebook/ads/redexgen/X/eY;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/eY;->A04()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 9282
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/eX;->A05(Lcom/facebook/ads/redexgen/X/eX;)I

    .line 9283
    :goto_2
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/eX;->A04(Lcom/facebook/ads/redexgen/X/eX;)I

    move-result v1

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/eX;->A06(Lcom/facebook/ads/redexgen/X/eX;)I

    move-result v0

    if-le v1, v0, :cond_9

    const/4 v10, 0x1

    .line 9284
    .local v7, "isViewable":Z
    :goto_3
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/eX;->A0F(Lcom/facebook/ads/redexgen/X/eX;)Lcom/facebook/ads/redexgen/X/eY;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/eX;->A0F(Lcom/facebook/ads/redexgen/X/eX;)Lcom/facebook/ads/redexgen/X/eY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eY;->A04()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v8, 0x1

    .line 9285
    .local v8, "wasViewable":Z
    :goto_4
    if-nez v10, :cond_6

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/eY;->A04()Z

    move-result v0

    if-nez v0, :cond_7

    .line 9286
    :cond_6
    invoke-static {v4, v5}, Lcom/facebook/ads/redexgen/X/eX;->A0G(Lcom/facebook/ads/redexgen/X/eX;Lcom/facebook/ads/redexgen/X/eY;)Lcom/facebook/ads/redexgen/X/eY;

    .line 9287
    :cond_7
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/eY;->A01()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 9288
    .local v9, "resultCode":Ljava/lang/String;
    monitor-enter v4

    goto :goto_5

    .line 9289
    :cond_8
    const/4 v8, 0x0

    goto :goto_4

    .line 9290
    :cond_9
    const/4 v10, 0x0

    goto :goto_3

    .line 9291
    :cond_a
    invoke-static {v4, v9}, Lcom/facebook/ads/redexgen/X/eX;->A07(Lcom/facebook/ads/redexgen/X/eX;I)I

    goto :goto_2

    .line 9292
    :goto_5
    :try_start_0
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/eX;->A0J(Lcom/facebook/ads/redexgen/X/eX;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/eX;->A0J(Lcom/facebook/ads/redexgen/X/eX;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 9293
    .local v1, "historicalCount":I
    :cond_b
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/eX;->A0J(Lcom/facebook/ads/redexgen/X/eX;)Ljava/util/Map;

    move-result-object v1

    add-int/lit8 v0, v9, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9294
    .end local v1    # "historicalCount":I
    monitor-exit v4

    .line 9295
    if-eqz v10, :cond_e

    if-nez v8, :cond_e
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9296
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/26;->A01:Z

    .line 9297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v4, v0, v1}, Lcom/facebook/ads/redexgen/X/eX;->A0A(Lcom/facebook/ads/redexgen/X/eX;J)J

    .line 9298
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/eX;->A0P(Lcom/facebook/ads/redexgen/X/eX;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 9299
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/26;->A00:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->A3o()V

    .line 9300
    :cond_c
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/eW;->A03()V

    .line 9301
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isVisibleAnimation()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 9302
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 9303
    .local v1, "animation":Landroid/view/animation/Animation;
    const-wide/16 v0, 0x1f4

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 9304
    invoke-virtual {v3, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 9305
    .end local v1    # "animation":Landroid/view/animation/Animation;
    :cond_d
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/eX;->A0Q(Lcom/facebook/ads/redexgen/X/eX;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 9306
    return-void

    .line 9307
    :cond_e
    if-nez v10, :cond_12

    if-eqz v8, :cond_12

    .line 9308
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/26;->A01:Z

    .line 9309
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/eX;->A0P(Lcom/facebook/ads/redexgen/X/eX;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 9310
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/26;->A00:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v1

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/eY;->A02()Lcom/facebook/ads/redexgen/X/LF;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->A3K(Lcom/facebook/ads/redexgen/X/LF;)V

    .line 9311
    :cond_f
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/eW;->A00()V

    .line 9312
    :cond_10
    :goto_6
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/eX;->A0O(Lcom/facebook/ads/redexgen/X/eX;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/eX;->A0D(Lcom/facebook/ads/redexgen/X/eX;)Lcom/facebook/ads/redexgen/X/Vt;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 9313
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/eX;->A0B(Lcom/facebook/ads/redexgen/X/eX;)Landroid/os/Handler;

    move-result-object v3

    .line 9314
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/eX;->A0D(Lcom/facebook/ads/redexgen/X/eX;)Lcom/facebook/ads/redexgen/X/Vt;

    move-result-object v2

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/eX;->A02(Lcom/facebook/ads/redexgen/X/eX;)I

    move-result v0

    int-to-long v0, v0

    .line 9315
    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9316
    :cond_11
    return-void

    .line 9317
    :cond_12
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/eW;->A02()V

    .line 9318
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/26;->A01:Z

    if-nez v0, :cond_13

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/eX;->A0P(Lcom/facebook/ads/redexgen/X/eX;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 9319
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/26;->A00:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v1

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/eY;->A02()Lcom/facebook/ads/redexgen/X/LF;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->A3m(Lcom/facebook/ads/redexgen/X/LF;)V

    .line 9320
    :cond_13
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/26;->A01:Z

    goto :goto_6

    .line 9321
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final A6e()Lcom/facebook/ads/redexgen/X/dL;
    .locals 1

    .line 9322
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/26;->A00:Lcom/facebook/ads/redexgen/X/dL;

    return-object v0
.end method
