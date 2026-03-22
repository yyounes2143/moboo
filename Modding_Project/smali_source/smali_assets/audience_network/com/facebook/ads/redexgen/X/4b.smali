.class public final Lcom/facebook/ads/redexgen/X/4b;
.super Lcom/facebook/ads/redexgen/X/DV;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/4Z;
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

    .line 14172
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4b;->A00:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DV;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/DW;)V
    .locals 2

    .line 14173
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/cG;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/cG;-><init>(Lcom/facebook/ads/redexgen/X/4b;)V

    .line 14174
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14175
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 14176
    check-cast p1, Lcom/facebook/ads/redexgen/X/DW;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4b;->A00(Lcom/facebook/ads/redexgen/X/DW;)V

    return-void
.end method
