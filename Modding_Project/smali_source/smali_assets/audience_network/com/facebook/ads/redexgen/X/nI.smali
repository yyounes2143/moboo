.class public final Lcom/facebook/ads/redexgen/X/nI;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Fo;
.implements Lcom/facebook/ads/redexgen/X/8D;
.implements Lcom/facebook/ads/redexgen/X/Dq;
.implements Lcom/facebook/ads/redexgen/X/B3;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9V;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ComponentListener"
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/9V;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3176
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "mdkndyL3N"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "34XFwDl9WvKoMHQUixXhMeiNQCyC6vNP"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "5uafIaN5"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "lxzaK8fg5Pf0nzPouXyzPKk1aT8cB3T1"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "DTIJ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "0UAV"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "B5vkeIjqEzHsmqRbylQSobdgrKqNmXUo"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "pkzfV8UoB1KOSL3E8gfET47OMeTC19My"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/nI;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9V;)V
    .locals 0

    .line 100274
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/nI;->A00:Lcom/facebook/ads/redexgen/X/9V;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/9V;Lcom/facebook/ads/redexgen/X/7J;)V
    .locals 0

    .line 100275
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/nI;-><init>(Lcom/facebook/ads/redexgen/X/9V;)V

    return-void
.end method


# virtual methods
.method public final ACP(Ljava/lang/String;JJ)V
    .locals 11

    .line 100276
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nI;->A00:Lcom/facebook/ads/redexgen/X/9V;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9V;->A0C(Lcom/facebook/ads/redexgen/X/9V;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/nI;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/nI;->A01:[Ljava/lang/String;

    const-string v1, "1hpUDXdDopjYnxDN8fIPsNGSxN8OzRvU"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/8D;

    .line 100277
    .local v1, "audioDebugListener":Lcom/facebook/ads/redexgen/X/8D;
    move-wide v9, p4

    move-wide v7, p2

    move-object v6, p1

    invoke-interface/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/8D;->ACP(Ljava/lang/String;JJ)V

    .line 100278
    .end local v1    # "audioDebugListener":Lcom/facebook/ads/redexgen/X/8D;
    goto :goto_0

    .line 100279
    :cond_1
    return-void
.end method

.method public final ACQ(Lcom/facebook/ads/redexgen/X/5g;)V
    .locals 2

    .line 100280
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nI;->A00:Lcom/facebook/ads/redexgen/X/9V;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9V;->A0C(Lcom/facebook/ads/redexgen/X/9V;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8D;

    .line 100281
    .local v1, "audioDebugListener":Lcom/facebook/ads/redexgen/X/8D;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/8D;->ACQ(Lcom/facebook/ads/redexgen/X/5g;)V

    .line 100282
    .end local v1    # "audioDebugListener":Lcom/facebook/ads/redexgen/X/8D;
    goto :goto_0

    .line 100283
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nI;->A00:Lcom/facebook/ads/redexgen/X/9V;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/9V;->A03(Lcom/facebook/ads/redexgen/X/9V;Lcom/facebook/ads/redexgen/X/or;)Lcom/facebook/ads/redexgen/X/or;

    .line 100284
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nI;->A00:Lcom/facebook/ads/redexgen/X/9V;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/9V;->A05(Lcom/facebook/ads/redexgen/X/9V;Lcom/facebook/ads/redexgen/X/5g;)Lcom/facebook/ads/redexgen/X/5g;

    .line 100285
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/nI;->A00:Lcom/facebook/ads/redexgen/X/9V;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/9V;->A00(Lcom/facebook/ads/redexgen/X/9V;I)I

    .line 100286
    return-void
.end method

.method public final ACR(Lcom/facebook/ads/redexgen/X/5g;)V
    .locals 2

    .line 100287
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nI;->A00:Lcom/facebook/ads/redexgen/X/9V;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/9V;->A05(Lcom/facebook/ads/redexgen/X/9V;Lcom/facebook/ads/redexgen/X/5g;)Lcom/facebook/ads/redexgen/X/5g;

    .line 100288
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nI;->A00:Lcom/facebook/ads/redexgen/X/9V;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9V;->A0C(Lcom/facebook/ads/redexgen/X/9V;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8D;

    .line 100289
    .local v1, "audioDebugListener":Lcom/facebook/ads/redexgen/X/8D;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/8D;->ACR(Lcom/facebook/ads/redexgen/X/5g;)V

    .line 100290
    .end local v1    # "audioDebugListener":Lcom/facebook/ads/redexgen/X/8D;
    goto :goto_0

    .line 100291
    :cond_0
    return-void
.end method

.method public final ACS(Lcom/facebook/ads/redexgen/X/or;)V
    .locals 2

    .line 100292
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nI;->A00:Lcom/facebook/ads/redexgen/X/9V;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/9V;->A03(Lcom/facebook/ads/redexgen/X/9V;Lcom/facebook/ads/redexgen/X/or;)Lcom/facebook/ads/redexgen/X/or;

    .line 100293
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nI;->A00:Lcom/facebook/ads/redexgen/X/9V;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9V;->A0C(Lcom/facebook/ads/redexgen/X/9V;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8D;

    .line 100294
    .local v1, "audioDebugListener":Lcom/facebook/ads/redexgen/X/8D;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/8D;->ACS(Lcom/facebook/ads/redexgen/X/or;)V

    .line 100295
    .end local v1    # "audioDebugListener":Lcom/facebook/ads/redexgen/X/8D;
    goto :goto_0

    .line 100296
    :cond_0
    return-void
.end method

.method public final synthetic ACT(Lcom/facebook/ads/redexgen/X/or;Lcom/facebook/ads/redexgen/X/5j;)V
    .locals 0

    return-void
.end method

.method public final synthetic ACU(J)V
    .locals 0

    return-void
.end method

.method public final synthetic ACV(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public final ACY(IJJ)V
    .locals 8

    .line 100297
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nI;->A00:Lcom/facebook/ads/redexgen/X/9V;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9V;->A0C(Lcom/facebook/ads/redexgen/X/9V;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/8D;

    .line 100298
    .local v1, "audioDebugListener":Lcom/facebook/ads/redexgen/X/8D;
    move-wide v6, p4

    move-wide v4, p2

    move v3, p1

    invoke-interface/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/8D;->ACY(IJJ)V

    .line 100299
    .end local v1    # "audioDebugListener":Lcom/facebook/ads/redexgen/X/8D;
    goto :goto_0

    .line 100300
    :cond_0
    return-void
.end method

.method public final synthetic ACr(IJ)V
    .locals 0

    return-void
.end method

.method public final ACv(Lcom/facebook/ads/redexgen/X/o0;)V
    .locals 2
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "TEMPORARY"
        }
        value = "Required until we deprecate and move ComponentListener to ExoPlayerImpl."
    .end annotation

    .line 100301
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nI;->A00:Lcom/facebook/ads/redexgen/X/9V;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9V;->A09(Lcom/facebook/ads/redexgen/X/9V;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/2s;

    .line 100302
    .local v1, "listener":Lcom/facebook/ads/redexgen/X/2s;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/2s;->ACv(Lcom/facebook/ads/redexgen/X/o0;)V

    .line 100303
    .end local v1    # "listener":Lcom/facebook/ads/redexgen/X/2s;
    goto :goto_0

    .line 100304
    :cond_0
    return-void
.end method

.method public final ACw(Ljava/util/List;)V
    .locals 2
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "TEMPORARY"
        }
        value = "Required until we deprecate and move ComponentListener to ExoPlayerImpl."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/o2;",
            ">;)V"
        }
    .end annotation

    .line 100305
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/common/text/Cue;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nI;->A00:Lcom/facebook/ads/redexgen/X/9V;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9V;->A09(Lcom/facebook/ads/redexgen/X/9V;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/2s;

    .line 100306
    .local v1, "listener":Lcom/facebook/ads/redexgen/X/2s;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/2s;->ACw(Ljava/util/List;)V

    .line 100307
    .end local v1    # "listener":Lcom/facebook/ads/redexgen/X/2s;
    goto :goto_0

    .line 100308
    :cond_0
    return-void
.end method

.method public final AD7(IJ)V
    .locals 2

    .line 100309
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nI;->A00:Lcom/facebook/ads/redexgen/X/9V;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9V;->A0A(Lcom/facebook/ads/redexgen/X/9V;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Fo;

    .line 100310
    .local v1, "videoDebugListener":Lcom/facebook/ads/redexgen/X/Fo;
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Fo;->AD7(IJ)V

    .line 100311
    .end local v1    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/Fo;
    goto :goto_0

    .line 100312
    :cond_0
    return-void
.end method

.method public final AEE(Lcom/facebook/ads/androidx/media3/common/Metadata;J)V
    .locals 2

    .line 100313
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nI;->A00:Lcom/facebook/ads/redexgen/X/9V;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9V;->A08(Lcom/facebook/ads/redexgen/X/9V;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/B3;

    .line 100314
    .local v1, "metadataOutput":Lcom/facebook/ads/redexgen/X/B3;
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/B3;->AEE(Lcom/facebook/ads/androidx/media3/common/Metadata;J)V

    .line 100315
    .end local v1    # "metadataOutput":Lcom/facebook/ads/redexgen/X/B3;
    goto :goto_0

    .line 100316
    :cond_0
    return-void
.end method

.method public final AEx(Ljava/lang/Object;J)V
    .locals 2

    .line 100317
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nI;->A00:Lcom/facebook/ads/redexgen/X/9V;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9V;->A01(Lcom/facebook/ads/redexgen/X/9V;)Landroid/view/Surface;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 100318
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nI;->A00:Lcom/facebook/ads/redexgen/X/9V;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9V;->A0B(Lcom/facebook/ads/redexgen/X/9V;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100319
    .local v1, "videoListener":Lcom/facebook/ads/redexgen/X/nH;
    .end local v1    # "videoListener":Lcom/facebook/ads/redexgen/X/nH;
    goto :goto_0

    .line 100320
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nI;->A00:Lcom/facebook/ads/redexgen/X/9V;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9V;->A0A(Lcom/facebook/ads/redexgen/X/9V;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Fo;

    .line 100321
    .local v1, "videoDebugListener":Lcom/facebook/ads/redexgen/X/Fo;
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Fo;->AEx(Ljava/lang/Object;J)V

    .line 100322
    .end local v1    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/Fo;
    goto :goto_1

    .line 100323
    :cond_1
    return-void
.end method

.method public final synthetic AFF(Z)V
    .locals 0

    return-void
.end method

.method public final AFd(Ljava/lang/String;JJ)V
    .locals 8

    .line 100324
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nI;->A00:Lcom/facebook/ads/redexgen/X/9V;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9V;->A0A(Lcom/facebook/ads/redexgen/X/9V;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Fo;

    .line 100325
    .local v1, "videoDebugListener":Lcom/facebook/ads/redexgen/X/Fo;
    move-wide v6, p4

    move-wide v4, p2

    move-object v3, p1

    invoke-interface/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/Fo;->AFd(Ljava/lang/String;JJ)V

    .line 100326
    .end local v1    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/Fo;
    goto :goto_0

    .line 100327
    :cond_0
    return-void
.end method

.method public final AFe(Lcom/facebook/ads/redexgen/X/5g;)V
    .locals 2

    .line 100328
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nI;->A00:Lcom/facebook/ads/redexgen/X/9V;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9V;->A0A(Lcom/facebook/ads/redexgen/X/9V;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Fo;

    .line 100329
    .local v1, "videoDebugListener":Lcom/facebook/ads/redexgen/X/Fo;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Fo;->AFe(Lcom/facebook/ads/redexgen/X/5g;)V

    .line 100330
    .end local v1    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/Fo;
    goto :goto_0

    .line 100331
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nI;->A00:Lcom/facebook/ads/redexgen/X/9V;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/9V;->A02(Lcom/facebook/ads/redexgen/X/9V;Lcom/facebook/ads/redexgen/X/or;)Lcom/facebook/ads/redexgen/X/or;

    .line 100332
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nI;->A00:Lcom/facebook/ads/redexgen/X/9V;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/9V;->A04(Lcom/facebook/ads/redexgen/X/9V;Lcom/facebook/ads/redexgen/X/5g;)Lcom/facebook/ads/redexgen/X/5g;

    .line 100333
    return-void
.end method

.method public final AFf(Lcom/facebook/ads/redexgen/X/5g;)V
    .locals 5

    .line 100334
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nI;->A00:Lcom/facebook/ads/redexgen/X/9V;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/9V;->A04(Lcom/facebook/ads/redexgen/X/9V;Lcom/facebook/ads/redexgen/X/5g;)Lcom/facebook/ads/redexgen/X/5g;

    .line 100335
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nI;->A00:Lcom/facebook/ads/redexgen/X/9V;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9V;->A0A(Lcom/facebook/ads/redexgen/X/9V;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/nI;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/nI;->A01:[Ljava/lang/String;

    const-string v1, "MKCckBbCZrSSu6G06Z7NkbaNocq2WvpN"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "V8qjKHPFdvtphjyj0wrcUTYdTARdRgua"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Fo;

    .line 100336
    .local v1, "videoDebugListener":Lcom/facebook/ads/redexgen/X/Fo;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Fo;->AFf(Lcom/facebook/ads/redexgen/X/5g;)V

    .line 100337
    .end local v1    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/Fo;
    goto :goto_0

    .line 100338
    :cond_1
    return-void
.end method

.method public final AFk(Lcom/facebook/ads/redexgen/X/or;)V
    .locals 5

    .line 100339
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nI;->A00:Lcom/facebook/ads/redexgen/X/9V;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/9V;->A02(Lcom/facebook/ads/redexgen/X/9V;Lcom/facebook/ads/redexgen/X/or;)Lcom/facebook/ads/redexgen/X/or;

    .line 100340
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nI;->A00:Lcom/facebook/ads/redexgen/X/9V;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9V;->A0A(Lcom/facebook/ads/redexgen/X/9V;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/nI;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/nI;->A01:[Ljava/lang/String;

    const-string v1, "2z1T7IcDfmpzuxqypnwVKmOXmU8bKGPo"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Fo;

    .line 100341
    .local v1, "videoDebugListener":Lcom/facebook/ads/redexgen/X/Fo;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Fo;->AFk(Lcom/facebook/ads/redexgen/X/or;)V

    .line 100342
    .end local v1    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/Fo;
    goto :goto_0

    .line 100343
    :cond_1
    return-void
.end method

.method public final synthetic AFl(Lcom/facebook/ads/redexgen/X/or;Lcom/facebook/ads/redexgen/X/5j;)V
    .locals 0

    return-void
.end method

.method public final AFr(Lcom/facebook/ads/redexgen/X/o4;)V
    .locals 6

    .line 100344
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nI;->A00:Lcom/facebook/ads/redexgen/X/9V;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9V;->A0B(Lcom/facebook/ads/redexgen/X/9V;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/4j;

    .line 100345
    .local v1, "videoListener":Lcom/facebook/ads/redexgen/X/4j;
    iget v3, p1, Lcom/facebook/ads/redexgen/X/o4;->A03:I

    iget v2, p1, Lcom/facebook/ads/redexgen/X/o4;->A01:I

    iget v1, p1, Lcom/facebook/ads/redexgen/X/o4;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/o4;->A00:F

    invoke-interface {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4j;->AFq(IIIF)V

    .line 100346
    .end local v1    # "videoListener":Lcom/facebook/ads/redexgen/X/4j;
    goto :goto_0

    .line 100347
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nI;->A00:Lcom/facebook/ads/redexgen/X/9V;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9V;->A0A(Lcom/facebook/ads/redexgen/X/9V;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Fo;

    sget-object v2, Lcom/facebook/ads/redexgen/X/nI;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 100348
    .local v1, "videoDebugListener":Lcom/facebook/ads/redexgen/X/Fo;
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/nI;->A01:[Ljava/lang/String;

    const-string v1, "q7eFcMKXm9CoB0iVpo1HKrbod3G9GfaY"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-interface {v3, p1}, Lcom/facebook/ads/redexgen/X/Fo;->AFr(Lcom/facebook/ads/redexgen/X/o4;)V

    .line 100349
    .end local v1    # "videoDebugListener":Lcom/facebook/ads/redexgen/X/Fo;
    goto :goto_1

    .line 100350
    :cond_2
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    .line 100351
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/nI;->A00:Lcom/facebook/ads/redexgen/X/9V;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9V;->A0G(Lcom/facebook/ads/redexgen/X/9V;Landroid/view/Surface;Z)V

    .line 100352
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    .line 100353
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/nI;->A00:Lcom/facebook/ads/redexgen/X/9V;

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9V;->A0G(Lcom/facebook/ads/redexgen/X/9V;Landroid/view/Surface;Z)V

    .line 100354
    return v0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 100355
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 100356
    return-void
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 100357
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 100358
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/nI;->A00:Lcom/facebook/ads/redexgen/X/9V;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9V;->A0G(Lcom/facebook/ads/redexgen/X/9V;Landroid/view/Surface;Z)V

    .line 100359
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 100360
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/nI;->A00:Lcom/facebook/ads/redexgen/X/9V;

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9V;->A0G(Lcom/facebook/ads/redexgen/X/9V;Landroid/view/Surface;Z)V

    .line 100361
    return-void
.end method
