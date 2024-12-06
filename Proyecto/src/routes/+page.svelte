<script lang="ts">
    import parseInput from "$lib/analizador";
    import CodeMirror from "svelte-codemirror-editor"

    let texto = $state("");
    let resultado = $state("");
    
    function analizar() {
        resultado = parseInput(texto);
    }
</script>

<div class="p-5 flex flex-row h-full max-h-full">
    <div class="h-full w-1/2 mx-2 rounded-md border-black border overflow-y-scroll">
        <CodeMirror bind:value={texto} on:change={analizar}/>
    </div>
    <div class="rounded-md border-black border-2 h-full w-1/2 mx-2">
        <p class="text-red-500">
            {resultado}
        </p>
    </div>
</div>
