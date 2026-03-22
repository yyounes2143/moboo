.class public final Lcom/facebook/ads/redexgen/X/fZ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/RQ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/RS;->A02(Landroid/widget/ImageView;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Landroid/widget/ImageView;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/RS;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Qc;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/RS;Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/Qc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 81000
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/fZ;->A01:Lcom/facebook/ads/redexgen/X/RS;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/fZ;->A00:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/fZ;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ADU(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 81001
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fZ;->A00:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0f(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    .line 81002
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fZ;->A02:Lcom/facebook/ads/redexgen/X/Qc;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Qc;->A1K(Landroid/graphics/drawable/Drawable;)V

    .line 81003
    return-void
.end method
