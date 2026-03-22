.class public final Lcom/facebook/ads/redexgen/X/J2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/a4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Is;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Is;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Is;)V
    .locals 0

    .line 43292
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/J2;->A00:Lcom/facebook/ads/redexgen/X/Is;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACu()V
    .locals 3

    .line 43293
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J2;->A00:Lcom/facebook/ads/redexgen/X/Is;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Is;->A0B(Lcom/facebook/ads/redexgen/X/Is;)Lcom/facebook/ads/redexgen/X/Ua;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/UZ;->A0J:Lcom/facebook/ads/redexgen/X/UZ;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ua;->A04(Lcom/facebook/ads/redexgen/X/UZ;Ljava/util/Map;)V

    .line 43294
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J2;->A00:Lcom/facebook/ads/redexgen/X/Is;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Is;->A09(Lcom/facebook/ads/redexgen/X/Is;)Lcom/facebook/ads/redexgen/X/MH;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43295
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/J2;->A00:Lcom/facebook/ads/redexgen/X/Is;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J2;->A00:Lcom/facebook/ads/redexgen/X/Is;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Is;->A09(Lcom/facebook/ads/redexgen/X/Is;)Lcom/facebook/ads/redexgen/X/MH;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/7P;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7P;->A0M()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Is;->A0g(Lcom/facebook/ads/redexgen/X/Is;Ljava/lang/String;)V

    .line 43296
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J2;->A00:Lcom/facebook/ads/redexgen/X/Is;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Is;->A0H(Lcom/facebook/ads/redexgen/X/Is;)Lcom/facebook/ads/redexgen/X/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A0E()Lcom/facebook/ads/redexgen/X/cT;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 43297
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J2;->A00:Lcom/facebook/ads/redexgen/X/Is;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Is;->A0H(Lcom/facebook/ads/redexgen/X/Is;)Lcom/facebook/ads/redexgen/X/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A0E()Lcom/facebook/ads/redexgen/X/cT;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/cT;->ABr()V

    .line 43298
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/J2;->A00:Lcom/facebook/ads/redexgen/X/Is;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Is;->A0h(Lcom/facebook/ads/redexgen/X/Is;Z)V

    .line 43299
    return-void
.end method
