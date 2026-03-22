.class public abstract Lorg/jacoco/core/internal/flow/ClassProbesVisitor;
.super Lorg/objectweb/asm/ClassVisitor;
.source "Proguard"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/jacoco/core/internal/flow/ClassProbesVisitor;-><init>(Lorg/objectweb/asm/ClassVisitor;)V

    return-void
.end method

.method public constructor <init>(Lorg/objectweb/asm/ClassVisitor;)V
    .locals 1

    const/high16 v0, 0x90000

    .line 2
    invoke-direct {p0, v0, p1}, Lorg/objectweb/asm/ClassVisitor;-><init>(ILorg/objectweb/asm/ClassVisitor;)V

    return-void
.end method
