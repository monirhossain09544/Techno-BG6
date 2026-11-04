.class public abstract Lcom/android/internal/org/bouncycastle/math/raw/Nat384;
.super Ljava/lang/Object;
.source "Nat384.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist mul([I[I[I)V
    .registers 20

    .line 12
    invoke-static/range {p0 .. p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->mul([I[I[I)V

    .line 13
    const/4 v3, 0x6

    const/16 v5, 0xc

    const/4 v1, 0x6

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->mul([II[II[II)V

    .line 15
    move-object v12, v4

    const/4 v13, 0x6

    const/16 v14, 0xc

    invoke-static {v12, v13, v12, v14}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->addToEachOther([II[II)I

    move-result v0

    .line 16
    const/4 v15, 0x0

    invoke-static {v12, v15, v12, v13, v15}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->addTo([II[III)I

    move-result v1

    add-int/2addr v1, v0

    .line 17
    const/16 v2, 0x12

    invoke-static {v12, v2, v12, v14, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->addTo([II[III)I

    move-result v1

    add-int v16, v0, v1

    .line 19
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v10

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v4

    .line 20
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x6

    move-object/from16 v8, p0

    move-object/from16 v6, p0

    invoke-static/range {v6 .. v11}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->diff([II[II[II)Z

    move-result v6

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x6

    move v0, v2

    move-object/from16 v2, p1

    move v7, v0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->diff([II[II[II)Z

    move-result v0

    if-eq v6, v0, :cond_4a

    const/4 v0, 0x1

    goto :goto_4b

    :cond_4a
    move v0, v15

    .line 22
    :goto_4b
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->createExt()[I

    move-result-object v1

    .line 23
    invoke-static {v10, v4, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->mul([I[I[I)V

    .line 25
    if-eqz v0, :cond_59

    invoke-static {v14, v1, v15, v12, v13}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addTo(I[II[II)I

    move-result v0

    goto :goto_5d

    :cond_59
    invoke-static {v14, v1, v15, v12, v13}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->subFrom(I[II[II)I

    move-result v0

    :goto_5d
    add-int v0, v16, v0

    .line 26
    const/16 v1, 0x18

    invoke-static {v1, v0, v12, v7}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addWordAt(II[II)I

    .line 27
    return-void
.end method

.method public static blacklist square([I[I)V
    .registers 14

    .line 31
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->square([I[I)V

    .line 32
    const/4 v0, 0x6

    const/16 v1, 0xc

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->square([II[II)V

    .line 34
    invoke-static {p1, v0, p1, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->addToEachOther([II[II)I

    move-result v2

    .line 35
    const/4 v3, 0x0

    invoke-static {p1, v3, p1, v0, v3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->addTo([II[III)I

    move-result v4

    add-int/2addr v4, v2

    .line 36
    const/16 v5, 0x12

    invoke-static {p1, v5, p1, v1, v4}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->addTo([II[III)I

    move-result v4

    add-int/2addr v2, v4

    .line 38
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v10

    .line 39
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x6

    move-object v8, p0

    move-object v6, p0

    invoke-static/range {v6 .. v11}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->diff([II[II[II)Z

    .line 41
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->createExt()[I

    move-result-object p0

    .line 42
    invoke-static {v10, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->square([I[I)V

    .line 44
    invoke-static {v1, p0, v3, p1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->subFrom(I[II[II)I

    move-result p0

    add-int/2addr v2, p0

    .line 45
    const/16 p0, 0x18

    invoke-static {p0, v2, p1, v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addWordAt(II[II)I

    .line 46
    return-void
.end method
