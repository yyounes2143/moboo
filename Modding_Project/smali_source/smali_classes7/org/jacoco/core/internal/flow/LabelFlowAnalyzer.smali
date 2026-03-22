.class public final Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;
.super Lorg/objectweb/asm/MethodVisitor;
.source "Proguard"


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/Label;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/high16 v0, 0x90000

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lorg/objectweb/asm/MethodVisitor;-><init>(I)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/objectweb/asm/Label;

    .line 14
    .line 15
    return-void
.end method
