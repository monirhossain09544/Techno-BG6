.class public Lcom/android/internal/pm/parsing/PackageParserException;
.super Ljava/lang/Exception;
.source "PackageParserException.java"


# instance fields
.field public final blacklist error:I


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;)V
    .registers 3

    .line 22
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 23
    iput p1, p0, Lcom/android/internal/pm/parsing/PackageParserException;->error:I

    .line 24
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 27
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    iput p1, p0, Lcom/android/internal/pm/parsing/PackageParserException;->error:I

    .line 29
    return-void
.end method
