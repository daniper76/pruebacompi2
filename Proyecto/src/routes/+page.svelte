<script lang="ts">
    import parseInput from "$lib/analizador";
    import CodeMirror from "svelte-codemirror-editor"

    let texto = $state("");
    let resultado = $state("");
    
    function analizar() {
        resultado = parseInput(texto);
    }
</script>


<div class="p-5 flex flex-col h-screen bg-slate-900">
    <div class="text-cyan-600 text-4xl font-extrabold max-w-screen-sm mb-5 flex justify-center items-center">
        <h1>OCL2 - Grupo 24</h1>
    </div>
    <div class="flex flex-row h-full">
        <div class="h-full w-1/2 mx-2 rounded-md font-extrabold border-white bg-amber-200 border overflow-y-scroll">
            <CodeMirror bind:value={texto} on:change={analizar} />
        </div>
        <div class="h-full w-1/2 mx-2 rounded-md border-white bg-amber-200 border-2">
            <p class="font-extrabold">
                {resultado}
            </p>
        </div>
    </div>
</div>

