.class public final Lcom/facebook/ads/redexgen/X/Lf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Xl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Lc;->A07()Lcom/facebook/ads/internal/view/FullScreenAdToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Lc;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1328
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "dAENZa04S5kpLZ1505OVGzU"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "BCWAX"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "x4EBtM5L1"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "d5mzvX7vdf5oGTbdkf23a85QS6J33UuP"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "T3xMk8xyeuXfnP2cHDF22zgmf4sSWk7a"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "D6RnJQb1nSkQk7teZoJG77p"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "lMrZ8D5HcAsH09zpnUIM78ubrFXrhoz6"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "r7D6OIPJDO7XxyVdFUwVLtQI1zZlrgYr"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Lf;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Lc;)V
    .locals 0

    .line 51167
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Lf;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACC(Lcom/facebook/ads/redexgen/X/Xm;)V
    .locals 5

    .line 51168
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lf;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A0Z(Lcom/facebook/ads/redexgen/X/Lc;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lf;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A0E(Lcom/facebook/ads/redexgen/X/Lc;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51169
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lf;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A0A(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/aI;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lf;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/aI;->A07(Landroid/view/ViewGroup;)V

    .line 51170
    :goto_0
    return-void

    .line 51171
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Lf;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Lf;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x38

    if-eq v1, v0, :cond_1

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Lf;->A01:[Ljava/lang/String;

    const-string v1, "011C"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Lc;->A0a(Lcom/facebook/ads/redexgen/X/Lc;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lf;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A0E(Lcom/facebook/ads/redexgen/X/Lc;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lf;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A0f(Lcom/facebook/ads/redexgen/X/Lc;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51172
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lf;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Lc;->A0a:Lcom/facebook/ads/redexgen/X/Xm;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMode(I)V

    .line 51173
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lf;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A0Q(Lcom/facebook/ads/redexgen/X/Lc;)V

    goto :goto_0

    .line 51174
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lf;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A04(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/Ua;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/UZ;->A07:Lcom/facebook/ads/redexgen/X/UZ;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ua;->A04(Lcom/facebook/ads/redexgen/X/UZ;Ljava/util/Map;)V

    .line 51175
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lf;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A01(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/NB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NB;->A0P()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 51176
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lf;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A02(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->ADk()V

    .line 51177
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lf;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A06(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/Xn;

    move-result-object v4

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Lf;->A00:Lcom/facebook/ads/redexgen/X/Lc;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Lf;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_4

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Lf;->A01:[Ljava/lang/String;

    const-string v1, "SsRiNY9tvP3hEWy4eyTF9NsffnrPtCfL"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Lc;->A08(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/YY;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/YY;->A7o()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/facebook/ads/redexgen/X/Xn;->A4b(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
