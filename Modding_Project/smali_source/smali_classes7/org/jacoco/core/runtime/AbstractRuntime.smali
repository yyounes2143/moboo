.class public abstract Lorg/jacoco/core/runtime/AbstractRuntime;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lorg/jacoco/core/runtime/IRuntime;


# static fields
.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Random;


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/jacoco/core/runtime/RuntimeData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Random;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/jacoco/core/runtime/AbstractRuntime;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Random;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
