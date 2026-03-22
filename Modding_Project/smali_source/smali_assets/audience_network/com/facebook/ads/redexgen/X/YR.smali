.class public final Lcom/facebook/ads/redexgen/X/YR;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/LZ;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/YT;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/LZ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/LZ;)V
    .locals 0

    .line 73611
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YR;->A00:Lcom/facebook/ads/redexgen/X/LZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Vl;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v1, p0

    .line 73612
    .local v0, "this":Lcom/facebook/ads/redexgen/X/YR;
    .local p1, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/YR;->A00:Lcom/facebook/ads/redexgen/X/LZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LZ;->A01(Lcom/facebook/ads/redexgen/X/LZ;)Lcom/facebook/ads/redexgen/X/YT;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/YT;->ADH()V

    .line 73613
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/YR;
    .end local p1    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Vl;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
