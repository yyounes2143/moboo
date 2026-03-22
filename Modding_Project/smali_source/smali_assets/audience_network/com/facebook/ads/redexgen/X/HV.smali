.class public final Lcom/facebook/ads/redexgen/X/HV;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Wc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/50;->A1E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/50;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 756
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "72ztA7TlK5AWnMBFqm0ulEGrNikWU87c"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "q9jSjTIXJJeud4mNFdEJpcs0aBWF"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "6LBG7Z"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "4a80CIrFExPHnWcdf8FRxARvXokzjsAY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "hmt020juZcOK2XVUFVfIwXvCI0upMeB5"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "bPuxHbTn8HkB22ksZqTc8mW6RF8jNMxu"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "KvPASdtvPFN6v"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "W7wSubo8j20OAA03KxoOzu7JM99EpBz5"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/HV;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/50;)V
    .locals 0

    .line 39407
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HV;->A00:Lcom/facebook/ads/redexgen/X/50;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACp()V
    .locals 4

    .line 39408
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HV;->A00:Lcom/facebook/ads/redexgen/X/50;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/50;->A03(Lcom/facebook/ads/redexgen/X/50;)Lcom/facebook/ads/redexgen/X/ae;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Jx;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HV;->A00:Lcom/facebook/ads/redexgen/X/50;

    .line 39409
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/50;->A03(Lcom/facebook/ads/redexgen/X/50;)Lcom/facebook/ads/redexgen/X/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ae;->A1K()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39410
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HV;->A00:Lcom/facebook/ads/redexgen/X/50;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/50;->A04(Lcom/facebook/ads/redexgen/X/50;)Lcom/facebook/ads/redexgen/X/cT;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/cT;->AFE(Z)V

    .line 39411
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HV;->A00:Lcom/facebook/ads/redexgen/X/50;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/50;->A01(Lcom/facebook/ads/redexgen/X/50;)Lcom/facebook/ads/redexgen/X/Xm;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMode(I)V

    .line 39412
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HV;->A00:Lcom/facebook/ads/redexgen/X/50;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/50;->A04(Lcom/facebook/ads/redexgen/X/50;)Lcom/facebook/ads/redexgen/X/cT;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HV;->A00:Lcom/facebook/ads/redexgen/X/50;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/50;->A00(Lcom/facebook/ads/redexgen/X/50;)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/cT;->ACy(I)V

    .line 39413
    return-void

    .line 39414
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HV;->A00:Lcom/facebook/ads/redexgen/X/50;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/50;->A03(Lcom/facebook/ads/redexgen/X/50;)Lcom/facebook/ads/redexgen/X/ae;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Is;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HV;->A00:Lcom/facebook/ads/redexgen/X/50;

    .line 39415
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/50;->A03(Lcom/facebook/ads/redexgen/X/50;)Lcom/facebook/ads/redexgen/X/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ae;->A1K()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39416
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HV;->A00:Lcom/facebook/ads/redexgen/X/50;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/50;->A04(Lcom/facebook/ads/redexgen/X/50;)Lcom/facebook/ads/redexgen/X/cT;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/cT;->AFE(Z)V

    .line 39417
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HV;->A00:Lcom/facebook/ads/redexgen/X/50;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/50;->A01(Lcom/facebook/ads/redexgen/X/50;)Lcom/facebook/ads/redexgen/X/Xm;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMode(I)V

    goto :goto_0

    .line 39418
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HV;->A00:Lcom/facebook/ads/redexgen/X/50;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/50;->A04(Lcom/facebook/ads/redexgen/X/50;)Lcom/facebook/ads/redexgen/X/cT;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/HV;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/HV;->A01:[Ljava/lang/String;

    const-string v1, "jNYMJATRfaQqNW2YkrgQ7vcVmM2IUm0K"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "cX4sd5TjwRWpCL8J3hPSalfD2n4ZIotM"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/cT;->AFE(Z)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AEn(F)V
    .locals 2

    .line 39419
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HV;->A00:Lcom/facebook/ads/redexgen/X/50;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/50;->A04(Lcom/facebook/ads/redexgen/X/50;)Lcom/facebook/ads/redexgen/X/cT;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HV;->A00:Lcom/facebook/ads/redexgen/X/50;

    .line 39420
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/50;->A00(Lcom/facebook/ads/redexgen/X/50;)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    .line 39421
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/cT;->ADI(F)V

    .line 39422
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HV;->A00:Lcom/facebook/ads/redexgen/X/50;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/50;->A05(Lcom/facebook/ads/redexgen/X/50;)Lcom/facebook/ads/redexgen/X/Cw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39423
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HV;->A00:Lcom/facebook/ads/redexgen/X/50;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/50;->A05(Lcom/facebook/ads/redexgen/X/50;)Lcom/facebook/ads/redexgen/X/Cw;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HV;->A00:Lcom/facebook/ads/redexgen/X/50;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/50;->A00(Lcom/facebook/ads/redexgen/X/50;)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Cw;->A07(I)V

    .line 39424
    :cond_0
    return-void
.end method
