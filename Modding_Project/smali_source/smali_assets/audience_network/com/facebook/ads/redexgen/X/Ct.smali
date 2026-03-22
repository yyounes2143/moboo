.class public final Lcom/facebook/ads/redexgen/X/Ct;
.super Lcom/facebook/ads/redexgen/X/Vt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Cp;->A05(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Cp;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Cp;)V
    .locals 0

    .line 33343
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ct;->A00:Lcom/facebook/ads/redexgen/X/Cp;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vt;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 33344
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ct;->A00:Lcom/facebook/ads/redexgen/X/Cp;

    sget-object v0, Lcom/facebook/ads/redexgen/X/e1;->A02:Lcom/facebook/ads/redexgen/X/e1;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Cp;->A03(Lcom/facebook/ads/redexgen/X/Cp;Lcom/facebook/ads/redexgen/X/e1;)Lcom/facebook/ads/redexgen/X/e1;

    .line 33345
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A00:Lcom/facebook/ads/redexgen/X/Cp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Cp;->A02(Lcom/facebook/ads/redexgen/X/Cp;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ct;->A00:Lcom/facebook/ads/redexgen/X/Cp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Cp;->A00(Lcom/facebook/ads/redexgen/X/Cp;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0Q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 33346
    return-void
.end method
