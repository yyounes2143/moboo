.class public abstract synthetic Lcom/facebook/ads/redexgen/X/9R;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 546
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "5T7TkW9NGOjGeZuW9Ub7Ngvet4faTjJs"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "vXLo1EXN2QD8gRdr6G5yk0dd7Lrfqyin"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "If52ql4YEPeGi3wksanu1qPsHEygHe92"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "IECsDDwSt9NknKwakDs4yHwqx3zcyruS"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "DosL7DgoA7WaW7VBT3"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "G"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Bg"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "N3GFLCvSDIijJXWDRku4zi5PstVgqnQW"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9R;->A00:[Ljava/lang/String;

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/9U;Lcom/facebook/ads/redexgen/X/9P;Lcom/facebook/ads/redexgen/X/or;)Lcom/facebook/ads/redexgen/X/9T;
    .locals 0

    .line 26495
    sget-object p0, Lcom/facebook/ads/redexgen/X/9T;->A00:Lcom/facebook/ads/redexgen/X/9T;

    return-object p0
.end method

.method public static A01()Lcom/facebook/ads/redexgen/X/9U;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 26496
    sget-object v3, Lcom/facebook/ads/redexgen/X/9U;->A00:Lcom/facebook/ads/redexgen/X/9U;

    sget-object v1, Lcom/facebook/ads/redexgen/X/9R;->A00:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x31

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/9R;->A00:[Ljava/lang/String;

    const-string v1, "Vtu5FS5hmB8VVYWE4p"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
