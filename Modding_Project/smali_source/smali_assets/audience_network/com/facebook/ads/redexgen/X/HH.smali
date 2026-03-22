.class public final Lcom/facebook/ads/redexgen/X/HH;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/a4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/4Z;->A0T()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4Z;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4Z;)V
    .locals 0

    .line 39323
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HH;->A00:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACu()V
    .locals 3

    .line 39324
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HH;->A00:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0C(Lcom/facebook/ads/redexgen/X/4Z;)Lcom/facebook/ads/redexgen/X/Ua;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/UZ;->A0J:Lcom/facebook/ads/redexgen/X/UZ;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ua;->A04(Lcom/facebook/ads/redexgen/X/UZ;Ljava/util/Map;)V

    .line 39325
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HH;->A00:Lcom/facebook/ads/redexgen/X/4Z;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HH;->A00:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0A(Lcom/facebook/ads/redexgen/X/4Z;)Lcom/facebook/ads/redexgen/X/MH;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/7P;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7P;->A0M()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0c(Lcom/facebook/ads/redexgen/X/4Z;Ljava/lang/String;)V

    .line 39326
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HH;->A00:Lcom/facebook/ads/redexgen/X/4Z;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0e(Lcom/facebook/ads/redexgen/X/4Z;Z)V

    .line 39327
    return-void
.end method
