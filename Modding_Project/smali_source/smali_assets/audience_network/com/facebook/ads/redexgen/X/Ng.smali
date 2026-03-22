.class public final Lcom/facebook/ads/redexgen/X/Ng;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Nh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Nh;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1411
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "5NfIE0YcA1j7k4kI09Qd"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "GOyJyQVDSAttzLj2dwW1R"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "UEE9UjADaku6tgIVG7TE"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "AlbuaripePsmIRlIONJuvTINhX"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "hDpBwlS77lkTDgpWlwn57aFtHcNJW0B1"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "G5FnfniCDoZltv23hjG8RcIHEgm214hW"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "K1Tu"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "8SU16w9FmjIzUCDhhEyMBCCw6KqJKOI3"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ng;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Nh;)V
    .locals 0

    .line 54251
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ng;->A00:Lcom/facebook/ads/redexgen/X/Nh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .line 54252
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ng;->A00:Lcom/facebook/ads/redexgen/X/Nh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Nh;->A02(Lcom/facebook/ads/redexgen/X/Nh;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->AHN()V

    .line 54253
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ng;->A00:Lcom/facebook/ads/redexgen/X/Nh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Nh;->A00(Lcom/facebook/ads/redexgen/X/Nh;)Landroid/os/Handler;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ng;->A00:Lcom/facebook/ads/redexgen/X/Nh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Nh;->A03(Lcom/facebook/ads/redexgen/X/Nh;)Lcom/facebook/ads/redexgen/X/Vt;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 54254
    if-nez p2, :cond_1

    .line 54255
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ng;->A00:Lcom/facebook/ads/redexgen/X/Nh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Nh;->A02(Lcom/facebook/ads/redexgen/X/Nh;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->AHP()V

    .line 54256
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ng;->A00:Lcom/facebook/ads/redexgen/X/Nh;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ng;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ng;->A01:[Ljava/lang/String;

    const-string v1, "klTZBPtNd5GFvPmgAP3f"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "mBOUVEJ7kKkpCLxr10ij"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Nh;->A0A(Lcom/facebook/ads/redexgen/X/Nh;)V

    .line 54257
    return-void

    .line 54258
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ng;->A00:Lcom/facebook/ads/redexgen/X/Nh;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/Nh;->A00:Landroid/os/Messenger;

    .line 54259
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ng;->A00:Lcom/facebook/ads/redexgen/X/Nh;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Nh;->A02:Z

    if-eqz v0, :cond_2

    .line 54260
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ng;->A00:Lcom/facebook/ads/redexgen/X/Nh;

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/Nh;->A02:Z

    .line 54261
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ng;->A00:Lcom/facebook/ads/redexgen/X/Nh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Nh;->A01(Lcom/facebook/ads/redexgen/X/Nh;)Lcom/facebook/ads/redexgen/X/hD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hD;->A06()V

    .line 54262
    :cond_2
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 54263
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ng;->A00:Lcom/facebook/ads/redexgen/X/Nh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Nh;->A02(Lcom/facebook/ads/redexgen/X/Nh;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->AHO()V

    .line 54264
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ng;->A00:Lcom/facebook/ads/redexgen/X/Nh;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Nh;->A01:Z

    if-eqz v0, :cond_0

    .line 54265
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ng;->A00:Lcom/facebook/ads/redexgen/X/Nh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Nh;->A0A(Lcom/facebook/ads/redexgen/X/Nh;)V

    .line 54266
    :cond_0
    return-void
.end method
