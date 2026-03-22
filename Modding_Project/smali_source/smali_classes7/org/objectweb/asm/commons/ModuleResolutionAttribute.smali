.class public final Lorg/objectweb/asm/commons/ModuleResolutionAttribute;
.super Lorg/objectweb/asm/Attribute;
.source "Proguard"


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/ModuleResolutionAttribute;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    const-string v0, "ModuleResolution"

    invoke-direct {p0, v0}, Lorg/objectweb/asm/Attribute;-><init>(Ljava/lang/String;)V

    .line 2
    iput p1, p0, Lorg/objectweb/asm/commons/ModuleResolutionAttribute;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    return-void
.end method
