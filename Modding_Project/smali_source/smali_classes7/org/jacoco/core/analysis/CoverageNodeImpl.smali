.class public Lorg/jacoco/core/analysis/CoverageNodeImpl;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lorg/jacoco/core/analysis/ICoverageNode;


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/jacoco/core/internal/analysis/CounterImpl;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/jacoco/core/internal/analysis/CounterImpl;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/jacoco/core/internal/analysis/CounterImpl;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/jacoco/core/internal/analysis/CounterImpl;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/jacoco/core/internal/analysis/CounterImpl;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/jacoco/core/internal/analysis/CounterImpl;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/jacoco/core/analysis/ICoverageNode$ElementType;


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/jacoco/core/analysis/ICounter;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/jacoco/core/internal/analysis/CounterImpl;

    .line 2
    .line 3
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/jacoco/core/analysis/ICounter;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/jacoco/core/internal/analysis/CounterImpl;

    .line 2
    .line 3
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/jacoco/core/analysis/ICounter;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/jacoco/core/internal/analysis/CounterImpl;

    .line 2
    .line 3
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/jacoco/core/analysis/ICounter;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/jacoco/core/internal/analysis/CounterImpl;

    .line 2
    .line 3
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/jacoco/core/analysis/ICounter;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/jacoco/core/internal/analysis/CounterImpl;

    .line 2
    .line 3
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/jacoco/core/analysis/ICounter;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/jacoco/core/internal/analysis/CounterImpl;

    .line 2
    .line 3
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/jacoco/core/analysis/ICoverageNode$CounterEntity;)Lorg/jacoco/core/analysis/ICounter;
    .locals 2

    .line 1
    sget-object v0, Lorg/jacoco/core/analysis/CoverageNodeImpl$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v0, Ljava/lang/AssertionError;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    throw v0

    .line 18
    :pswitch_0
    invoke-virtual {p0}, Lorg/jacoco/core/analysis/CoverageNodeImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/jacoco/core/analysis/ICounter;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :pswitch_1
    invoke-virtual {p0}, Lorg/jacoco/core/analysis/CoverageNodeImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/jacoco/core/analysis/ICounter;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :pswitch_2
    invoke-virtual {p0}, Lorg/jacoco/core/analysis/CoverageNodeImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/jacoco/core/analysis/ICounter;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1

    .line 33
    :pswitch_3
    invoke-virtual {p0}, Lorg/jacoco/core/analysis/CoverageNodeImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/jacoco/core/analysis/ICounter;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1

    .line 38
    :pswitch_4
    invoke-virtual {p0}, Lorg/jacoco/core/analysis/CoverageNodeImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/jacoco/core/analysis/ICounter;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1

    .line 43
    :pswitch_5
    invoke-virtual {p0}, Lorg/jacoco/core/analysis/CoverageNodeImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/jacoco/core/analysis/ICounter;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " ["

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/jacoco/core/analysis/ICoverageNode$ElementType;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, "]"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method
