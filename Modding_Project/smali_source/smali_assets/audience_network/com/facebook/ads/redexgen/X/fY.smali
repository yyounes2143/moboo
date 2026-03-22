.class public final Lcom/facebook/ads/redexgen/X/fY;
.super Lcom/facebook/ads/redexgen/X/Vt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/RS;->A02(Landroid/widget/ImageView;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Landroid/graphics/drawable/Drawable;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/RS;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Qc;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/RS;Lcom/facebook/ads/redexgen/X/Qc;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 80997
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/fY;->A01:Lcom/facebook/ads/redexgen/X/RS;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/fY;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/fY;->A00:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vt;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 80998
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fY;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fY;->A00:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Qc;->A1K(Landroid/graphics/drawable/Drawable;)V

    .line 80999
    return-void
.end method
