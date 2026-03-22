.class public final Lcom/facebook/ads/redexgen/X/P1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/0B;->A0E(Landroid/view/View;Lcom/facebook/ads/redexgen/X/On;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/On;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/0B;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/0B;Lcom/facebook/ads/redexgen/X/On;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56776
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/P1;->A01:Lcom/facebook/ads/redexgen/X/0B;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/P1;->A00:Lcom/facebook/ads/redexgen/X/On;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 56777
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/PK;->A00(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/PK;

    move-result-object v1

    .line 56778
    .local v0, "compatInsets":Lcom/facebook/ads/redexgen/X/PK;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P1;->A00:Lcom/facebook/ads/redexgen/X/On;

    invoke-interface {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/On;->ACL(Landroid/view/View;Lcom/facebook/ads/redexgen/X/PK;)Lcom/facebook/ads/redexgen/X/PK;

    move-result-object v0

    .line 56779
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PK;->A01(Lcom/facebook/ads/redexgen/X/PK;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;

    return-object v0
.end method
