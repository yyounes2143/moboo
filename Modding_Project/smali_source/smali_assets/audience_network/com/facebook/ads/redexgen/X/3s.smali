.class public final Lcom/facebook/ads/redexgen/X/3s;
.super Lcom/facebook/ads/redexgen/X/DV;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/3r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/3r;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/3r;)V
    .locals 0

    .line 11909
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3s;->A00:Lcom/facebook/ads/redexgen/X/3r;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DV;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/DW;)V
    .locals 2

    .line 11910
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/cc;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/cc;-><init>(Lcom/facebook/ads/redexgen/X/3s;)V

    .line 11911
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11912
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 11913
    check-cast p1, Lcom/facebook/ads/redexgen/X/DW;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/3s;->A00(Lcom/facebook/ads/redexgen/X/DW;)V

    return-void
.end method
