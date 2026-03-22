.class public final Lcom/facebook/ads/redexgen/X/Jb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/a4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/JU;-><init>(Lcom/facebook/ads/redexgen/X/ai;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/JU;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/JU;)V
    .locals 0

    .line 46001
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Jb;->A00:Lcom/facebook/ads/redexgen/X/JU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACu()V
    .locals 3

    .line 46002
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A00:Lcom/facebook/ads/redexgen/X/JU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JU;->A0B(Lcom/facebook/ads/redexgen/X/JU;)Lcom/facebook/ads/redexgen/X/Ua;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/UZ;->A0J:Lcom/facebook/ads/redexgen/X/UZ;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ua;->A04(Lcom/facebook/ads/redexgen/X/UZ;Ljava/util/Map;)V

    .line 46003
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jb;->A00:Lcom/facebook/ads/redexgen/X/JU;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A00:Lcom/facebook/ads/redexgen/X/JU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JU;->A09(Lcom/facebook/ads/redexgen/X/JU;)Lcom/facebook/ads/redexgen/X/MH;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/7P;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7P;->A0M()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/JU;->A0d(Lcom/facebook/ads/redexgen/X/JU;Ljava/lang/String;)V

    .line 46004
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jb;->A00:Lcom/facebook/ads/redexgen/X/JU;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/JU;->A0e(Lcom/facebook/ads/redexgen/X/JU;Z)V

    .line 46005
    return-void
.end method
