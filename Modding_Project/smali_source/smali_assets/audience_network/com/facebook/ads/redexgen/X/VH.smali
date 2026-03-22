.class public final Lcom/facebook/ads/redexgen/X/VH;
.super Lcom/facebook/ads/redexgen/X/Tg;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/VG;->A05(Lcom/facebook/ads/redexgen/X/UP;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/Tg<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/UP;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/VG;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/VG;Lcom/facebook/ads/redexgen/X/UP;)V
    .locals 0

    .line 68845
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VH;->A01:Lcom/facebook/ads/redexgen/X/VG;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/VH;->A00:Lcom/facebook/ads/redexgen/X/UP;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Tg;-><init>()V

    return-void
.end method

.method private final A00(Ljava/lang/String;)V
    .locals 1

    .line 68846
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Tg;->A02(Ljava/lang/Object;)V

    .line 68847
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VH;->A00:Lcom/facebook/ads/redexgen/X/UP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UP;->A0B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68848
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VH;->A01:Lcom/facebook/ads/redexgen/X/VG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VG;->A00(Lcom/facebook/ads/redexgen/X/VG;)Lcom/facebook/ads/redexgen/X/UR;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/UR;->A5u()V

    .line 68849
    :goto_0
    return-void

    .line 68850
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VH;->A01:Lcom/facebook/ads/redexgen/X/VG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VG;->A00(Lcom/facebook/ads/redexgen/X/VG;)Lcom/facebook/ads/redexgen/X/UR;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/UR;->A5t()V

    goto :goto_0
.end method


# virtual methods
.method public final A01(ILjava/lang/String;)V
    .locals 0

    .line 68851
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Tg;->A01(ILjava/lang/String;)V

    .line 68852
    return-void
.end method

.method public final bridge synthetic A02(Ljava/lang/Object;)V
    .locals 0

    .line 68853
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/VH;->A00(Ljava/lang/String;)V

    return-void
.end method
