.class public final Lorg/jacoco/core/internal/analysis/filter/KotlinInlineFilter;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lorg/jacoco/core/internal/analysis/filter/IFilter;


# static fields
.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/regex/Pattern;

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/regex/Pattern;


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "([0-9]++)(#[0-9]++)?+(,[0-9]++)?+:([0-9]++)(,[0-9]++)?+"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/jacoco/core/internal/analysis/filter/KotlinInlineFilter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    const-string v0, "\\+ ([0-9]++) (.++)"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lorg/jacoco/core/internal/analysis/filter/KotlinInlineFilter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/regex/Pattern;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinInlineFilter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 6
    .line 7
    return-void
.end method
